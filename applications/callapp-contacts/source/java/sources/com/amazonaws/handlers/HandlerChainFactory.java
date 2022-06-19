package com.amazonaws.handlers;

import com.amazonaws.AmazonClientException;
import com.amazonaws.util.ClassLoaderHelper;
import com.amazonaws.util.StringUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/handlers/HandlerChainFactory.class */
public class HandlerChainFactory {
    /* renamed from: a */
    public final List<RequestHandler2> m38635a(String str, Class<?> cls) {
        Throwable th;
        Exception e;
        BufferedReader bufferedReader;
        ArrayList arrayList = new ArrayList();
        BufferedReader bufferedReader2 = null;
        try {
            try {
                InputStream resourceAsStream = getClass().getResourceAsStream(str);
                if (resourceAsStream == null) {
                    return arrayList;
                }
                bufferedReader = new BufferedReader(new InputStreamReader(resourceAsStream, StringUtils.f12513a));
                while (true) {
                    try {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e2) {
                            }
                            return arrayList;
                        }
                        String trim = readLine.trim();
                        if (!"".equals(trim)) {
                            Object newInstance = ClassLoaderHelper.loadClass(trim, cls, getClass()).newInstance();
                            if (!cls.isInstance(newInstance)) {
                                throw new AmazonClientException("Unable to instantiate request handler chain for client.  Listed request handler ('" + trim + "') does not implement the " + cls + " API.");
                            } else if (cls == RequestHandler2.class) {
                                arrayList.add((RequestHandler2) newInstance);
                            } else if (cls != RequestHandler.class) {
                                throw new IllegalStateException();
                            } else {
                                arrayList.add(RequestHandler2.m38634a((RequestHandler) newInstance));
                            }
                        }
                    } catch (Exception e3) {
                        e = e3;
                        BufferedReader bufferedReader3 = bufferedReader;
                        BufferedReader bufferedReader4 = bufferedReader;
                        StringBuilder sb = new StringBuilder("Unable to instantiate request handler chain for client: ");
                        BufferedReader bufferedReader5 = bufferedReader;
                        sb.append(e.getMessage());
                        BufferedReader bufferedReader6 = bufferedReader;
                        AmazonClientException amazonClientException = new AmazonClientException(sb.toString(), e);
                        BufferedReader bufferedReader7 = bufferedReader;
                        throw amazonClientException;
                    } catch (Throwable th2) {
                        bufferedReader2 = bufferedReader;
                        th = th2;
                        if (bufferedReader2 != null) {
                            try {
                                bufferedReader2.close();
                            } catch (IOException e4) {
                            }
                        }
                        throw th;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Exception e5) {
            e = e5;
            bufferedReader = null;
        }
    }
}
