package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.Phonemetadata;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/AsYouTypeFormatter.class */
public class AsYouTypeFormatter {
    static {
        Phonemetadata.PhoneMetadata.Builder B = Phonemetadata.PhoneMetadata.m7977B();
        B.m7918i0("<ignored>");
        B.m7917j0("NA");
        B.m7919h0();
        Pattern.compile("[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～]*(\\$\\d[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～]*)+");
        Pattern.compile("[- ]");
        Pattern.compile("\u2008");
    }
}
