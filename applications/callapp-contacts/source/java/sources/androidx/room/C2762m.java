package androidx.room;

import android.content.Context;
import androidx.room.p081b.C2722d;
import androidx.sqlite.p082db.SupportSQLiteOpenHelper;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
/* renamed from: androidx.room.m */
/* loaded from: classes-dex2jar.jar:androidx/room/m.class */
final class C2762m implements SupportSQLiteOpenHelper {

    /* renamed from: a */
    DatabaseConfiguration f10473a;

    /* renamed from: b */
    private final Context f10474b;

    /* renamed from: c */
    private final String f10475c;

    /* renamed from: d */
    private final File f10476d;

    /* renamed from: e */
    private final int f10477e;

    /* renamed from: f */
    private final SupportSQLiteOpenHelper f10478f;

    /* renamed from: g */
    private boolean f10479g;

    public C2762m(Context context, String str, File file, int i, SupportSQLiteOpenHelper supportSQLiteOpenHelper) {
        this.f10474b = context;
        this.f10475c = str;
        this.f10476d = file;
        this.f10477e = i;
        this.f10478f = supportSQLiteOpenHelper;
    }

    /* renamed from: a */
    private void m39940a(File file) throws IOException {
        FileChannel fileChannel;
        if (this.f10475c != null) {
            fileChannel = Channels.newChannel(this.f10474b.getAssets().open(this.f10475c));
        } else if (this.f10476d == null) {
            throw new IllegalStateException("copyFromAssetPath and copyFromFile == null!");
        } else {
            fileChannel = new FileInputStream(this.f10476d).getChannel();
        }
        File createTempFile = File.createTempFile("room-copy-helper", ".tmp", this.f10474b.getCacheDir());
        createTempFile.deleteOnExit();
        C2722d.m39995a(fileChannel, new FileOutputStream(createTempFile).getChannel());
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
            throw new IOException("Failed to create directories for " + file.getAbsolutePath());
        } else if (createTempFile.renameTo(file)) {
        } else {
            throw new IOException("Failed to move intermediate file (" + createTempFile.getAbsolutePath() + ") to destination (" + file.getAbsolutePath() + ").");
        }
    }

    @Override // androidx.sqlite.p082db.SupportSQLiteOpenHelper
    /* renamed from: a */
    public final String mo39908a() {
        return this.f10478f.mo39908a();
    }

    @Override // androidx.sqlite.p082db.SupportSQLiteOpenHelper
    /* renamed from: a */
    public final void mo39907a(boolean z) {
        this.f10478f.mo39907a(z);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0094 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0059 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // androidx.sqlite.p082db.SupportSQLiteOpenHelper
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.sqlite.p082db.AbstractC2792b mo39906b() {
        /*
            Method dump skipped, instructions count: 346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.C2762m.mo39906b():androidx.sqlite.db.b");
    }

    @Override // androidx.sqlite.p082db.SupportSQLiteOpenHelper, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this) {
            this.f10478f.close();
            this.f10479g = false;
        }
    }
}
