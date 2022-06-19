package com.telguarder.helpers.idGenerators;

import com.telguarder.helpers.log.Logger;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/idGenerators/Sha1Converter.class */
public class Sha1Converter {
    public static String SHA1(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(str.getBytes("iso-8859-1"), 0, str.length());
            str = convertToHex(messageDigest.digest());
        } catch (UnsupportedEncodingException | NoSuchAlgorithmException e) {
            Logger.error(e.getMessage());
        }
        return str;
    }

    private static String convertToHex(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            int i = (b >>> 4) & 15;
            int i2 = 0;
            while (true) {
                sb.append((char) ((i < 0 || i > 9) ? (i - 10) + 97 : i + 48));
                i = b & 15;
                if (i2 >= 1) {
                    break;
                }
                i2++;
            }
        }
        return sb.toString();
    }
}
