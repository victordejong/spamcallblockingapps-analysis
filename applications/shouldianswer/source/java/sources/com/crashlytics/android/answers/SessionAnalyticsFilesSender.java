package com.crashlytics.android.answers;

import io.fabric.sdk.android.AbstractC1459h;
import io.fabric.sdk.android.C1449c;
import io.fabric.sdk.android.services.network.AbstractC1588d;
import io.fabric.sdk.android.services.network.EnumC1587c;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.p068b.AbstractC1468a;
import io.fabric.sdk.android.services.p068b.C1503s;
import io.fabric.sdk.android.services.p069c.AbstractC1513f;
import java.io.File;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/SessionAnalyticsFilesSender.class */
class SessionAnalyticsFilesSender extends AbstractC1468a implements AbstractC1513f {
    static final String FILE_CONTENT_TYPE = "application/vnd.crashlytics.android.events";
    static final String FILE_PARAM_NAME = "session_analytics_file_";
    private final String apiKey;

    public SessionAnalyticsFilesSender(AbstractC1459h abstractC1459h, String str, String str2, AbstractC1588d abstractC1588d, String str3) {
        super(abstractC1459h, str, str2, abstractC1588d, EnumC1587c.POST);
        this.apiKey = str3;
    }

    @Override // io.fabric.sdk.android.services.p069c.AbstractC1513f
    public boolean send(List<File> list) {
        HttpRequest m3284a = getHttpRequest().m3284a(AbstractC1468a.HEADER_CLIENT_TYPE, AbstractC1468a.ANDROID_CLIENT_TYPE).m3284a(AbstractC1468a.HEADER_CLIENT_VERSION, this.kit.getVersion()).m3284a(AbstractC1468a.HEADER_API_KEY, this.apiKey);
        boolean z = false;
        int i = 0;
        for (File file : list) {
            m3284a.m3281a(FILE_PARAM_NAME + i, file.getName(), FILE_CONTENT_TYPE, file);
            i++;
        }
        C1449c.m3572g().mo3552a(Answers.TAG, "Sending " + list.size() + " analytics files to " + getUrl());
        int m3275b = m3284a.m3275b();
        C1449c.m3572g().mo3552a(Answers.TAG, "Response code for analytics file send is " + m3275b);
        if (C1503s.m3400a(m3275b) == 0) {
            z = true;
        }
        return z;
    }
}
