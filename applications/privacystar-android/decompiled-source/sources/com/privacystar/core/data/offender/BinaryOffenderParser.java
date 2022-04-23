package com.privacystar.core.data.offender;

import com.privacystar.core.data.model.Offender;
import com.privacystar.core.data.model.OffenderCategory;
import hugo.weaving.DebugLog;
import io.realm.Realm;
import io.realm.RealmAsyncTask;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/offender/BinaryOffenderParser.class */
public class BinaryOffenderParser {
    private static final int DELTA_SET = 255;
    private static final int FULL_SET = 0;
    private static final int HEADER_BUFF_SIZE = 16;
    private static final int INT_BUFF_SIZE = 4;
    private static final int LONG_BUFF_SIZE = 8;
    private static final int MEDIAN_MASK = 128;
    private static final int PHONE_NUMBER_BUFF_SIZE = 17;
    private static final String READ_MISMATCH = "Bytes read [%d] did not match expected number [%d].";
    private static final int UBYTE_MASK = 255;
    private static final String UNEMPTY_NAME_SET = "Binary offender dataset indicated to contain %d names when there should be 0.";
    private static BinaryOffenderParser sInstance;

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/offender/BinaryOffenderParser$BinaryDataset.class */
    public class BinaryDataset {
        public int[] addCategories;
        public int[] addFlags;
        public int[] addSpamScores;
        public long[] additions;
        public boolean fullSet;
        public int[] newCategoryIds;
        public String[] newCategoryNames;
        public long[] removals;

        public BinaryDataset() {
        }

        public BinaryDataset(boolean z, long[] jArr, long[] jArr2, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, String[] strArr) {
            this.fullSet = z;
            this.removals = jArr;
            this.additions = jArr2;
            this.addSpamScores = iArr;
            this.addCategories = iArr2;
            this.addFlags = iArr3;
            this.newCategoryIds = iArr4;
            this.newCategoryNames = strArr;
        }

        public boolean datasetValid() {
            return (getNumberOfAdditions() == -1 || getNumberOfNewCategories() == -1 || getNumberOfRemovals() == -1) ? false : true;
        }

        public int getNumberOfAdditions() {
            if (this.additions != null) {
                return this.additions.length;
            }
            return -1;
        }

        public int getNumberOfNewCategories() {
            if (this.newCategoryIds != null) {
                return this.newCategoryIds.length;
            }
            return -1;
        }

        public int getNumberOfRemovals() {
            if (this.removals != null) {
                return this.removals.length;
            }
            return -1;
        }
    }

    private BinaryOffenderParser() {
    }

    public static BinaryOffenderParser getInstance() {
        if (sInstance == null) {
            sInstance = new BinaryOffenderParser();
        }
        return sInstance;
    }

    private static boolean isFullDataset(int i) {
        return i < 128;
    }

    private static int offenderSetVersion(int i) {
        int i2 = i;
        if (!isFullDataset(i)) {
            i2 = 255 - i;
        }
        return i2;
    }

    private void parseCategoriesToAdd(InputStream inputStream, BinaryDataset binaryDataset, int i) throws IOException {
        byte[] bArr = new byte[4];
        binaryDataset.newCategoryIds = new int[i];
        binaryDataset.newCategoryNames = new String[i];
        for (int i2 = 0; i2 < i; i2++) {
            verifyBytesRead(inputStream.read(bArr), 4);
            binaryDataset.newCategoryIds[i2] = ByteBuffer.wrap(bArr).getInt();
            int read = inputStream.read(bArr);
            if (read != 4) {
                Timber.m31i(READ_MISMATCH, Integer.valueOf(read), 4);
                return;
            }
            int i3 = ByteBuffer.wrap(bArr).getInt();
            byte[] bArr2 = new byte[i3];
            verifyBytesRead(inputStream.read(bArr2), i3);
            try {
                binaryDataset.newCategoryNames[i2] = new String(bArr2, "UTF-8");
            } catch (UnsupportedEncodingException e) {
                Timber.m23w(e, "Failed to read category name as UTF-8: '%s'", new String(bArr2));
            }
        }
    }

    private void parseCategoriesToAddIntoRealm(Realm realm, InputStream inputStream, int i) throws IOException {
        byte[] bArr = new byte[4];
        for (int i2 = 0; i2 < i; i2++) {
            verifyBytesRead(inputStream.read(bArr), 4);
            OffenderCategory offenderCategory = (OffenderCategory) realm.createObject(OffenderCategory.class, Integer.valueOf(ByteBuffer.wrap(bArr).getInt()));
            verifyBytesRead(inputStream.read(bArr), 4);
            int i3 = ByteBuffer.wrap(bArr).getInt();
            byte[] bArr2 = new byte[i3];
            verifyBytesRead(inputStream.read(bArr2), i3);
            try {
                offenderCategory.setCategoryName(new String(bArr2, "UTF-8"));
            } catch (UnsupportedEncodingException e) {
                Timber.m23w(e, "Failed to read category name as UTF-8: '%s'", new String(bArr2));
                return;
            }
        }
    }

    private void parseNumbersToAdd(InputStream inputStream, BinaryDataset binaryDataset, int i) throws IOException {
        byte[] bArr = new byte[17];
        binaryDataset.additions = new long[i];
        binaryDataset.addSpamScores = new int[i];
        binaryDataset.addCategories = new int[i];
        binaryDataset.addFlags = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            verifyBytesRead(inputStream.read(bArr), 17);
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            binaryDataset.additions[i2] = wrap.getLong();
            binaryDataset.addSpamScores[i2] = wrap.get() & 255;
            binaryDataset.addCategories[i2] = wrap.getInt();
            binaryDataset.addFlags[i2] = wrap.getInt();
        }
    }

    private void parseNumbersToAddIntoRealm(Realm realm, InputStream inputStream, int i) throws IOException {
        byte[] bArr = new byte[17];
        Offender offender = new Offender();
        for (int i2 = 0; i2 < i; i2++) {
            verifyBytesRead(inputStream.read(bArr), 17);
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            offender.setNumber(Long.valueOf(wrap.getLong()));
            offender.setSpamScore(Integer.valueOf(wrap.get() & 255));
            offender.setCategoryId(Integer.valueOf(wrap.getInt()));
            offender.setOffenderFlags(Integer.valueOf(wrap.getInt()));
            realm.insert(offender);
        }
    }

    private void parseNumbersToRemove(InputStream inputStream, BinaryDataset binaryDataset, int i) throws IOException {
        byte[] bArr = new byte[8];
        binaryDataset.removals = new long[i];
        for (int i2 = 0; i2 < i; i2++) {
            verifyBytesRead(inputStream.read(bArr), 8);
            binaryDataset.removals[i2] = ByteBuffer.wrap(bArr).getLong();
        }
    }

    private void parseNumbersToRemoveFromRealm(Realm realm, InputStream inputStream, int i) throws IOException {
        long j = i * 8;
        long j2 = 0;
        while (j2 < j) {
            j2 += inputStream.skip(j - j2);
        }
    }

    private void parseOffenderDeltaIntoRealmSchema0(Realm realm, InputStream inputStream) throws IOException {
        byte[] bArr = new byte[16];
        verifyBytesRead(inputStream.read(bArr), 16);
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        int i = wrap.getInt();
        int i2 = wrap.getInt();
        if (i2 != 0) {
            Timber.m25w(UNEMPTY_NAME_SET, Integer.valueOf(i2));
        }
        int i3 = wrap.getInt();
        int i4 = wrap.getInt();
        parseNumbersToRemoveFromRealm(realm, inputStream, i3);
        parseNumbersToAddIntoRealm(realm, inputStream, i4);
        parseCategoriesToAddIntoRealm(realm, inputStream, i);
    }

    private void parseOffenderDeltaIntoRealmSchema1(Realm realm, InputStream inputStream) throws IOException {
        byte[] bArr = new byte[16];
        verifyBytesRead(inputStream.read(bArr), 16);
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        int i = wrap.getInt();
        int i2 = wrap.getInt();
        if (i2 != 0) {
            Timber.m25w(UNEMPTY_NAME_SET, Integer.valueOf(i2));
        }
        int i3 = wrap.getInt();
        int i4 = wrap.getInt();
        parseCategoriesToAddIntoRealm(realm, inputStream, i);
        parseNumbersToRemoveFromRealm(realm, inputStream, i3);
        parseNumbersToAddIntoRealm(realm, inputStream, i4);
    }

    private void parseOffenderDeltaSchema0(InputStream inputStream, BinaryDataset binaryDataset) throws IOException {
        byte[] bArr = new byte[16];
        verifyBytesRead(inputStream.read(bArr), 16);
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        int i = wrap.getInt();
        int i2 = wrap.getInt();
        if (i2 != 0) {
            Timber.m25w(UNEMPTY_NAME_SET, Integer.valueOf(i2));
        }
        int i3 = wrap.getInt();
        int i4 = wrap.getInt();
        parseNumbersToRemove(inputStream, binaryDataset, i3);
        parseNumbersToAdd(inputStream, binaryDataset, i4);
        parseCategoriesToAdd(inputStream, binaryDataset, i);
    }

    private void parseOffenderDeltaSchema1(InputStream inputStream, BinaryDataset binaryDataset) throws IOException {
        byte[] bArr = new byte[16];
        verifyBytesRead(inputStream.read(bArr), 16);
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        int i = wrap.getInt();
        int i2 = wrap.getInt();
        if (i2 != 0) {
            Timber.m25w(UNEMPTY_NAME_SET, Integer.valueOf(i2));
        }
        int i3 = wrap.getInt();
        int i4 = wrap.getInt();
        parseCategoriesToAdd(inputStream, binaryDataset, i);
        parseNumbersToRemove(inputStream, binaryDataset, i3);
        parseNumbersToAdd(inputStream, binaryDataset, i4);
    }

    private void verifyBytesRead(int i, int i2) throws IOException {
        if (i != i2) {
            Timber.m31i(READ_MISMATCH, Integer.valueOf(i), Integer.valueOf(i2));
            throw new IOException("Could not read the number of bytes requested [" + i + "].");
        }
    }

    public RealmAsyncTask handleOffenderFullInitialization(Realm realm, InputStream inputStream) {
        try {
            int read = inputStream.read();
            int offenderSetVersion = offenderSetVersion(read);
            if (!isFullDataset(read)) {
                return null;
            }
            switch (offenderSetVersion) {
                case 0:
                    parseOffenderDeltaIntoRealmSchema0(realm, inputStream);
                    return null;
                case 1:
                    parseOffenderDeltaIntoRealmSchema1(realm, inputStream);
                    return null;
                default:
                    Timber.m25w("Received a binary dataset with a version number that is not supported.", new Object[0]);
                    return null;
            }
        } catch (IOException e) {
            Timber.m23w(e, "error parsing input file", new Object[0]);
            return null;
        }
    }

    @DebugLog
    public BinaryDataset parseOffenderDelta(InputStream inputStream) {
        BinaryDataset binaryDataset;
        try {
            BinaryDataset binaryDataset2 = new BinaryDataset();
            int read = inputStream.read();
            int offenderSetVersion = offenderSetVersion(read);
            binaryDataset2.fullSet = isFullDataset(read);
            switch (offenderSetVersion) {
                case 0:
                    parseOffenderDeltaSchema0(inputStream, binaryDataset2);
                    binaryDataset = binaryDataset2;
                    break;
                case 1:
                    parseOffenderDeltaSchema1(inputStream, binaryDataset2);
                    binaryDataset = binaryDataset2;
                    break;
                default:
                    Timber.m25w("Received a binary dataset with a version number [%s] that is not supported.", Integer.valueOf(offenderSetVersion));
                    binaryDataset = binaryDataset2;
                    break;
            }
        } catch (IOException e) {
            Timber.m23w(e, "error parsing input stream", new Object[0]);
            binaryDataset = null;
        }
        return binaryDataset;
    }
}
