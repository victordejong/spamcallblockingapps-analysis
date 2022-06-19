package p000;

import android.content.SharedPreferences;
import p000.q71;
import p000.r71;
/* renamed from: h81 */
/* loaded from: classes3-dex2jar.jar:h81.class */
public class h81 {

    /* renamed from: a */
    public static String f6714a = "settings.data";

    /* renamed from: b */
    public static String f6715b = "settings_blocking_method";

    /* renamed from: c */
    public static String f6716c = "settings_blocking_method_end_call";

    /* renamed from: d */
    public static String f6717d = "settings_blocking_method_pickup_hangup";

    /* renamed from: e */
    public static String f6718e = "settings_blocking_method_mute_ringer";

    /* renamed from: a */
    public static SharedPreferences m1640a() {
        return fa1.m1840j().getSharedPreferences(f6714a, 0);
    }

    /* renamed from: b */
    public static void m1639b() {
        StringBuilder sb;
        q71.EnumC1614a enumC1614a;
        SharedPreferences m1640a = m1640a();
        r71.EnumC1638a enumC1638a = r71.EnumC1638a.f7942d;
        Boolean valueOf = Boolean.valueOf(m1640a.getBoolean("settings_enable_call_control", enumC1638a.m694b()));
        String str = "Enable CC :" + valueOf;
        enumC1638a.m685k(valueOf);
        r71.EnumC1638a enumC1638a2 = r71.EnumC1638a.f7979q;
        Boolean valueOf2 = Boolean.valueOf(m1640a.getBoolean("settings_hide_blocking_icon", enumC1638a2.m694b()));
        String str2 = "Hide block/missed notification :" + valueOf2;
        enumC1638a2.m685k(valueOf2);
        r71.EnumC1638a enumC1638a3 = r71.EnumC1638a.f7976p;
        Boolean valueOf3 = Boolean.valueOf(!m1640a.getBoolean("settings_hide_service_icon", !enumC1638a3.m694b()));
        String str3 = "Show service icon :" + valueOf3;
        enumC1638a3.m685k(valueOf3);
        r71.EnumC1638a enumC1638a4 = r71.EnumC1638a.f7950g;
        Boolean valueOf4 = Boolean.valueOf(m1640a.getBoolean("settings_disable_community_blacklist", !enumC1638a4.m694b()));
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Enable Community :");
        sb2.append(!valueOf4.booleanValue());
        sb2.toString();
        enumC1638a4.m685k(Boolean.valueOf(!valueOf4.booleanValue()));
        r71.EnumC1638a enumC1638a5 = r71.EnumC1638a.f8000x;
        Boolean valueOf5 = Boolean.valueOf(m1640a.getBoolean("settings_block_private_calls", enumC1638a5.m694b()));
        String str4 = "Blocking private calls :" + valueOf5;
        enumC1638a5.m685k(valueOf5);
        r71.EnumC1638a enumC1638a6 = r71.EnumC1638a.f8003y;
        Boolean valueOf6 = Boolean.valueOf(m1640a.getBoolean("settings_block_unknown_calls", enumC1638a6.m694b()));
        String str5 = "Blocking unknown calls :" + valueOf6;
        enumC1638a6.m685k(valueOf6);
        r71.EnumC1638a enumC1638a7 = r71.EnumC1638a.f8006z;
        Boolean valueOf7 = Boolean.valueOf(m1640a.getBoolean("block_by_type_fake_caller_sender_id", enumC1638a7.m694b()));
        String str6 = "Blocking fake CallerID :" + valueOf7;
        enumC1638a7.m685k(valueOf7);
        r71.EnumC1638a enumC1638a8 = r71.EnumC1638a.f7884A;
        Boolean valueOf8 = Boolean.valueOf(m1640a.getBoolean("block_by_type_text_sender_id", enumC1638a8.m694b()));
        String str7 = "Blocking non numeric CallerID :" + valueOf8;
        enumC1638a8.m685k(valueOf8);
        r71.EnumC1638a enumC1638a9 = r71.EnumC1638a.f7888C;
        boolean z = m1640a.getBoolean("block_by_type_toll_free", enumC1638a9.m694b());
        String str8 = "Blocking Tool Free :" + valueOf7;
        enumC1638a9.m685k(Boolean.valueOf(z));
        r71.EnumC1638a enumC1638a10 = r71.EnumC1638a.f7886B;
        Boolean valueOf9 = Boolean.valueOf(m1640a.getBoolean("block_by_type_emailed_message", enumC1638a10.m694b()));
        String str9 = "Blocking emailed text message :" + valueOf9;
        enumC1638a10.m685k(valueOf9);
        String string = m1640a.getString(f6715b, f6716c);
        if (string.equals(f6716c)) {
            sb = new StringBuilder();
            sb.append("Set blocking mode to ");
            enumC1614a = q71.EnumC1614a.VOICE_MAIL;
        } else if (string.equals(f6718e)) {
            sb = new StringBuilder();
            sb.append("Set blocking mode to ");
            enumC1614a = q71.EnumC1614a.IGNORE;
        } else if (!string.equals(f6717d)) {
            j91.m1505k("Migration - Preferences", "Blocking mode is unavailable " + string);
            r71.EnumC1638a enumC1638a11 = r71.EnumC1638a.f7909M0;
            Boolean valueOf10 = Boolean.valueOf(m1640a.getBoolean("prolicence", enumC1638a11.m694b()));
            String str10 = "Enable Pro: " + valueOf10;
            enumC1638a11.m685k(valueOf10);
            r71.EnumC1638a enumC1638a12 = r71.EnumC1638a.f7915P0;
            Boolean valueOf11 = Boolean.valueOf(m1640a.getBoolean("is_advertisement_allowed", enumC1638a12.m694b()));
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Enable Ads: ");
            sb3.append(valueOf11);
            sb3.append(", set Ads to: ");
            sb3.append(!valueOf11.booleanValue() && !valueOf10.booleanValue());
            sb3.toString();
            enumC1638a12.m685k(Boolean.valueOf(!valueOf11.booleanValue() && !valueOf10.booleanValue()));
        } else {
            sb = new StringBuilder();
            sb.append("Set blocking mode to ");
            enumC1614a = q71.EnumC1614a.PICKUP_HANGUP;
        }
        sb.append(enumC1614a.toString());
        sb.toString();
        q71.EnumC1614a.m911e(enumC1614a);
        r71.EnumC1638a enumC1638a112 = r71.EnumC1638a.f7909M0;
        Boolean valueOf102 = Boolean.valueOf(m1640a.getBoolean("prolicence", enumC1638a112.m694b()));
        String str102 = "Enable Pro: " + valueOf102;
        enumC1638a112.m685k(valueOf102);
        r71.EnumC1638a enumC1638a122 = r71.EnumC1638a.f7915P0;
        Boolean valueOf112 = Boolean.valueOf(m1640a.getBoolean("is_advertisement_allowed", enumC1638a122.m694b()));
        StringBuilder sb32 = new StringBuilder();
        sb32.append("Enable Ads: ");
        sb32.append(valueOf112);
        sb32.append(", set Ads to: ");
        sb32.append(!valueOf112.booleanValue() && !valueOf102.booleanValue());
        sb32.toString();
        enumC1638a122.m685k(Boolean.valueOf(!valueOf112.booleanValue() && !valueOf102.booleanValue()));
    }
}
