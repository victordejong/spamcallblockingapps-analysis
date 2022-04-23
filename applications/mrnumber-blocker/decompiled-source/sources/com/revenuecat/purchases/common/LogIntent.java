package com.revenuecat.purchases.common;

import com.revenuecat.purchases.strings.Emojis;
import java.util.List;
import kotlin.s.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/common/LogIntent.class */
public enum LogIntent {
    GOOGLE_ERROR(k.j(new String[]{"��", Emojis.DOUBLE_EXCLAMATION})),
    GOOGLE_INFO(k.j(new String[]{"��", Emojis.DOUBLE_EXCLAMATION})),
    INFO(k.b(Emojis.INFO)),
    DEBUG_INFO(k.b(Emojis.INFO)),
    PURCHASE(k.b("��")),
    RC_ERROR(k.j(new String[]{"��", Emojis.DOUBLE_EXCLAMATION})),
    RC_PURCHASE_SUCCESS(k.j(new String[]{"��", "��"})),
    RC_SUCCESS(k.b("��")),
    USER(k.b("��")),
    WARNING(k.b(Emojis.WARNING));
    
    private final List<String> emojiList;

    LogIntent(List list) {
        this.emojiList = list;
    }

    public final List<String> getEmojiList() {
        return this.emojiList;
    }
}
