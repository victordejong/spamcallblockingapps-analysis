package com.google.i18n.phonenumbers.prefixmapper;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/prefixmapper/PrefixFileReader.class */
public class PrefixFileReader {
    private static final Logger logger = Logger.getLogger(PrefixFileReader.class.getName());
    private final String phonePrefixDataDirectory;
    private MappingFileProvider mappingFileProvider = new MappingFileProvider();
    private Map<String, PhonePrefixMap> availablePhonePrefixMaps = new HashMap();

    public PrefixFileReader(String str) {
        this.phonePrefixDataDirectory = str;
        loadMappingFileProvider();
    }

    private static void close(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
                logger.log(Level.WARNING, e.toString());
            }
        }
    }

    private PhonePrefixMap getPhonePrefixDescriptions(int i, String str, String str2, String str3) {
        String fileName = this.mappingFileProvider.getFileName(i, str, str2, str3);
        if (fileName.length() == 0) {
            return null;
        }
        if (!this.availablePhonePrefixMaps.containsKey(fileName)) {
            loadPhonePrefixMapFromFile(fileName);
        }
        return this.availablePhonePrefixMaps.get(fileName);
    }

    private void loadMappingFileProvider() {
        Throwable th;
        ObjectInputStream objectInputStream;
        IOException e;
        ObjectInputStream objectInputStream2 = null;
        try {
            try {
                objectInputStream = new ObjectInputStream(PrefixFileReader.class.getResourceAsStream(this.phonePrefixDataDirectory + "config"));
            } catch (IOException e2) {
                e = e2;
                objectInputStream = null;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            this.mappingFileProvider.readExternal(objectInputStream);
            close(objectInputStream);
        } catch (IOException e3) {
            e = e3;
            objectInputStream2 = objectInputStream;
            logger.log(Level.WARNING, e.toString());
            close(objectInputStream);
        } catch (Throwable th3) {
            objectInputStream2 = objectInputStream;
            th = th3;
            close(objectInputStream2);
            throw th;
        }
    }

    private void loadPhonePrefixMapFromFile(String str) {
        Throwable th;
        IOException e;
        ObjectInputStream objectInputStream;
        ObjectInputStream objectInputStream2;
        ObjectInputStream objectInputStream3 = null;
        try {
            try {
                objectInputStream2 = new ObjectInputStream(PrefixFileReader.class.getResourceAsStream(this.phonePrefixDataDirectory + str));
            } catch (IOException e2) {
                e = e2;
                objectInputStream = null;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            PhonePrefixMap phonePrefixMap = new PhonePrefixMap();
            phonePrefixMap.readExternal(objectInputStream2);
            this.availablePhonePrefixMaps.put(str, phonePrefixMap);
            close(objectInputStream2);
        } catch (IOException e3) {
            objectInputStream = objectInputStream2;
            e = e3;
            objectInputStream3 = objectInputStream;
            logger.log(Level.WARNING, e.toString());
            close(objectInputStream);
        } catch (Throwable th3) {
            th = th3;
            objectInputStream3 = objectInputStream2;
            close(objectInputStream3);
            throw th;
        }
    }

    private boolean mayFallBackToEnglish(String str) {
        return !str.equals("zh") && !str.equals("ja") && !str.equals("ko");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0047, code lost:
        if (r10.length() == 0) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getDescriptionForNumber(com.google.i18n.phonenumbers.Phonenumber.PhoneNumber r7, java.lang.String r8, java.lang.String r9, java.lang.String r10) {
        /*
            r6 = this;
            r0 = r7
            int r0 = r0.getCountryCode()
            r11 = r0
            r0 = r11
            r1 = 1
            if (r0 == r1) goto Lf
            goto L1e
        Lf:
            r0 = r7
            long r0 = r0.getNationalNumber()
            r1 = 10000000(0x989680, double:4.9406565E-317)
            long r0 = r0 / r1
            int r0 = (int) r0
            r1 = 1000(0x3e8, float:1.401E-42)
            int r0 = r0 + r1
            r11 = r0
        L1e:
            r0 = r6
            r1 = r11
            r2 = r8
            r3 = r9
            r4 = r10
            com.google.i18n.phonenumbers.prefixmapper.PhonePrefixMap r0 = r0.getPhonePrefixDescriptions(r1, r2, r3, r4)
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L37
            r0 = r9
            r1 = r7
            java.lang.String r0 = r0.lookup(r1)
            r10 = r0
            goto L3a
        L37:
            r0 = 0
            r10 = r0
        L3a:
            r0 = r10
            if (r0 == 0) goto L4a
            r0 = r10
            r9 = r0
            r0 = r10
            int r0 = r0.length()
            if (r0 != 0) goto L6f
        L4a:
            r0 = r10
            r9 = r0
            r0 = r6
            r1 = r8
            boolean r0 = r0.mayFallBackToEnglish(r1)
            if (r0 == 0) goto L6f
            r0 = r6
            r1 = r11
            java.lang.String r2 = "en"
            java.lang.String r3 = ""
            java.lang.String r4 = ""
            com.google.i18n.phonenumbers.prefixmapper.PhonePrefixMap r0 = r0.getPhonePrefixDescriptions(r1, r2, r3, r4)
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L69
            java.lang.String r0 = ""
            return r0
        L69:
            r0 = r8
            r1 = r7
            java.lang.String r0 = r0.lookup(r1)
            r9 = r0
        L6f:
            r0 = r9
            if (r0 == 0) goto L76
            goto L79
        L76:
            java.lang.String r0 = ""
            r9 = r0
        L79:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.i18n.phonenumbers.prefixmapper.PrefixFileReader.getDescriptionForNumber(com.google.i18n.phonenumbers.Phonenumber$PhoneNumber, java.lang.String, java.lang.String, java.lang.String):java.lang.String");
    }
}
