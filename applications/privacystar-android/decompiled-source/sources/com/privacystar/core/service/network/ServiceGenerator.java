package com.privacystar.core.service.network;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.privacystar.core.PSApplication;
import com.privacystar.core.service.network.adapter.DPIResultCodeDeserializer;
import com.privacystar.core.service.network.model.response.CallWatchPaymentResponse;
import com.privacystar.core.util.BuildUtil;
import com.readystatesoftware.chuck.ChuckInterceptor;
import java.util.concurrent.TimeUnit;
import okhttp3.OkHttpClient;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/ServiceGenerator.class */
public class ServiceGenerator {
    private ServiceGenerator() {
    }

    private static Retrofit.Builder createBuilder(String str) {
        Gson create = new GsonBuilder().setDateFormat("yyyy-MM-dd'T'HH:mm:ssZ").excludeFieldsWithoutExposeAnnotation().registerTypeAdapter(CallWatchPaymentResponse.DPIResultCode.class, new DPIResultCodeDeserializer()).create();
        OkHttpClient.Builder readTimeout = new OkHttpClient.Builder().connectTimeout(1L, TimeUnit.MINUTES).writeTimeout(1L, TimeUnit.MINUTES).readTimeout(1L, TimeUnit.MINUTES);
        if (BuildUtil.INSTANCE.isDevelopmentBuild()) {
            readTimeout.addInterceptor(new ChuckInterceptor(PSApplication.context()));
        }
        return new Retrofit.Builder().baseUrl(str).addConverterFactory(GsonConverterFactory.create(create)).client(readTimeout.build());
    }

    public static <S> S createService(Class<S> cls, String str) {
        return (S) createBuilder(str).build().create(cls);
    }
}
