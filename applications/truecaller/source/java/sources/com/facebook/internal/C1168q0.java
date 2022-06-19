package com.facebook.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.google.android.gms.ads.RequestConfiguration;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.tenor.android.core.network.constant.Protocols;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import kotlin.Metadata;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1538j.C23222c0;
import p193e.p1538j.C23228f0;
import s1.f0.b;
import s1.f0.h;
import s1.f0.r;
import s1.f0.v;
import s1.z.c.l;
@Metadata(d1 = {"��\u0098\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0006\n��\n\u0002\u0010 \n��\n\u0002\u0018\u0002\n��\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0011\bÆ\u0002\u0018��2\u00020\u0001:\u0004Ñ\u0001Ò\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J*\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u001a2\u0006\u0010,\u001a\u00020-2\b\u0010.\u001a\u0004\u0018\u00010\u00042\u0006\u0010/\u001a\u000200H\u0002J \u00101\u001a\u00020*2\u0006\u0010+\u001a\u00020\u001a2\u0006\u0010,\u001a\u00020-2\u0006\u0010/\u001a\u000200H\u0002J'\u00102\u001a\u00020 \"\u0004\b��\u001032\b\u00104\u001a\u0004\u0018\u0001H32\b\u00105\u001a\u0004\u0018\u0001H3H\u0007¢\u0006\u0002\u00106J\u0012\u00107\u001a\u0004\u0018\u00010\u001a2\u0006\u00108\u001a\u00020\u0004H\u0007J&\u00109\u001a\u00020:2\b\u0010;\u001a\u0004\u0018\u00010\u00042\b\u0010<\u001a\u0004\u0018\u00010\u00042\b\u0010=\u001a\u0004\u0018\u00010>H\u0007J\u0018\u0010?\u001a\u00020*2\u0006\u0010/\u001a\u0002002\u0006\u0010@\u001a\u00020\u0004H\u0002J\u0010\u0010A\u001a\u00020*2\u0006\u0010/\u001a\u000200H\u0007J\u0012\u0010B\u001a\u00020*2\b\u0010C\u001a\u0004\u0018\u00010DH\u0007J\u001e\u0010E\u001a\u0004\u0018\u00010\u00042\b\u0010F\u001a\u0004\u0018\u00010\u00042\b\u0010G\u001a\u0004\u0018\u00010\u0004H\u0007J\u0010\u0010H\u001a\u00020\u00132\u0006\u0010I\u001a\u00020JH\u0002J\u0016\u0010K\u001a\b\u0012\u0004\u0012\u00020\u00040L2\u0006\u0010M\u001a\u00020NH\u0007J\u001c\u0010O\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010P2\u0006\u0010Q\u001a\u00020\u001aH\u0007J\u001c\u0010R\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040P2\u0006\u0010Q\u001a\u00020\u001aH\u0007J\u001a\u0010S\u001a\u00020\u00062\b\u0010T\u001a\u0004\u0018\u00010U2\u0006\u0010V\u001a\u00020WH\u0007J\u0012\u0010X\u001a\u00020*2\b\u0010Y\u001a\u0004\u0018\u00010ZH\u0007J\b\u0010[\u001a\u00020 H\u0002J\u0010\u0010\\\u001a\u00020\u00042\u0006\u0010]\u001a\u00020\u0006H\u0007J\u0012\u0010^\u001a\u00020\u00042\b\u0010/\u001a\u0004\u0018\u000100H\u0007J\u0010\u0010_\u001a\u00020\u00042\u0006\u0010/\u001a\u000200H\u0007J\n\u0010`\u001a\u0004\u0018\u00010\u0004H\u0007J&\u0010a\u001a\u0004\u0018\u00010b2\b\u0010c\u001a\u0004\u0018\u00010>2\b\u0010d\u001a\u0004\u0018\u00010\u00042\u0006\u0010e\u001a\u00020bH\u0007J\u0010\u0010f\u001a\u00020\u00132\u0006\u0010g\u001a\u00020:H\u0007J\n\u0010h\u001a\u0004\u0018\u00010\u0004H\u0002J\u0012\u0010i\u001a\u00020\u00042\b\u0010j\u001a\u0004\u0018\u00010\u0004H\u0007J\u0010\u0010k\u001a\u00020l2\u0006\u00108\u001a\u00020\u0004H\u0002J\u0018\u0010m\u001a\u00020*2\u0006\u00108\u001a\u00020\u00042\u0006\u0010n\u001a\u00020oH\u0007J\u0012\u0010p\u001a\u00020\u00042\b\u0010/\u001a\u0004\u0018\u000100H\u0007JC\u0010q\u001a\u0004\u0018\u00010r2\n\u0010s\u001a\u0006\u0012\u0002\b\u00030t2\u0006\u0010u\u001a\u00020\u00042\u001e\u0010v\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0002\b\u0003\u0018\u00010t0w\"\b\u0012\u0002\b\u0003\u0018\u00010tH\u0007¢\u0006\u0002\u0010xJ?\u0010q\u001a\u0004\u0018\u00010r2\u0006\u0010y\u001a\u00020\u00042\u0006\u0010u\u001a\u00020\u00042\u001e\u0010v\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0002\b\u0003\u0018\u00010t0w\"\b\u0012\u0002\b\u0003\u0018\u00010tH\u0007¢\u0006\u0002\u0010zJ\u0012\u0010{\u001a\u00020\u00042\b\u0010|\u001a\u0004\u0018\u00010\u0004H\u0002J&\u0010}\u001a\u0004\u0018\u00010\u00012\u0006\u0010Q\u001a\u00020\u001a2\b\u0010d\u001a\u0004\u0018\u00010\u00042\b\u0010~\u001a\u0004\u0018\u00010\u0004H\u0007J\u0015\u0010\u007f\u001a\u0004\u0018\u00010\u00042\t\u0010\u0080\u0001\u001a\u0004\u0018\u00010:H\u0007J\u0013\u0010\u0081\u0001\u001a\u00030\u0082\u00012\u0007\u0010\u0083\u0001\u001a\u00020\u001aH\u0007J\u001c\u0010\u0084\u0001\u001a\u00020\u00042\b\u0010\u0085\u0001\u001a\u00030\u0086\u00012\u0007\u0010I\u001a\u00030\u0087\u0001H\u0002J\u001d\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u00042\u0007\u0010\u0089\u0001\u001a\u00020\u00042\u0007\u0010I\u001a\u00030\u0087\u0001H\u0002J\u001c\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u00042\u0007\u0010\u0089\u0001\u001a\u00020\u00042\u0006\u0010d\u001a\u00020\u0004H\u0002J>\u0010\u008a\u0001\u001a\u0004\u0018\u00010\u00012\t\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00012\u0007\u0010\u008c\u0001\u001a\u00020r2\u0017\u0010\u008d\u0001\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010w\"\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0003\u0010\u008e\u0001J\u0011\u0010\u008f\u0001\u001a\u00020 2\u0006\u0010/\u001a\u000200H\u0007J\u0011\u0010\u0090\u0001\u001a\u00020 2\u0006\u0010/\u001a\u000200H\u0007J\u0014\u0010\u0091\u0001\u001a\u00020 2\t\u0010\u0080\u0001\u001a\u0004\u0018\u00010:H\u0007J\u0015\u0010\u0092\u0001\u001a\u00020 2\n\u0010\u0093\u0001\u001a\u0005\u0018\u00010\u0094\u0001H\u0007J\u0014\u0010\u0095\u0001\u001a\u00020 2\t\u0010\u0080\u0001\u001a\u0004\u0018\u00010:H\u0007J\u0011\u0010\u0096\u0001\u001a\u00020 2\u0006\u0010/\u001a\u000200H\u0002J\u0013\u0010\u0097\u0001\u001a\u00020 2\b\u0010F\u001a\u0004\u0018\u00010\u0004H\u0007J\u0019\u0010\u0097\u0001\u001a\u00020 2\u000e\u0010\u0098\u0001\u001a\t\u0012\u0002\b\u0003\u0018\u00010\u0099\u0001H\u0007J\u0014\u0010\u009a\u0001\u001a\u00020 2\t\u0010\u0080\u0001\u001a\u0004\u0018\u00010:H\u0007J\u0018\u0010\u009b\u0001\u001a\t\u0012\u0004\u0012\u00020\u00040\u009c\u00012\u0006\u0010M\u001a\u00020NH\u0007J\u0017\u0010\u009d\u0001\u001a\b\u0012\u0004\u0012\u00020\u00040L2\u0006\u0010M\u001a\u00020NH\u0007J\u001e\u0010\u009e\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040P2\u0007\u0010\u009f\u0001\u001a\u00020\u0004H\u0007J'\u0010 \u0001\u001a\u00020*2\t\u0010¡\u0001\u001a\u0004\u0018\u00010\u00042\u0011\u0010¢\u0001\u001a\f\u0018\u00010£\u0001j\u0005\u0018\u0001`¤\u0001H\u0007J\u001f\u0010 \u0001\u001a\u00020*2\t\u0010¡\u0001\u001a\u0004\u0018\u00010\u00042\t\u0010¥\u0001\u001a\u0004\u0018\u00010\u0004H\u0007J+\u0010 \u0001\u001a\u00020*2\t\u0010¡\u0001\u001a\u0004\u0018\u00010\u00042\t\u0010¥\u0001\u001a\u0004\u0018\u00010\u00042\n\u0010¦\u0001\u001a\u0005\u0018\u00010§\u0001H\u0007J\"\u0010¨\u0001\u001a\u00020\u00042\u0017\u0010©\u0001\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040PH\u0007J\u0013\u0010ª\u0001\u001a\u0004\u0018\u00010\u00042\u0006\u0010d\u001a\u00020\u0004H\u0007J\u0011\u0010«\u0001\u001a\u00020 2\u0006\u0010/\u001a\u000200H\u0007J\u0014\u0010¬\u0001\u001a\u00020>2\t\u0010\u00ad\u0001\u001a\u0004\u0018\u00010\u0004H\u0007J.\u0010®\u0001\u001a\u00020*2\u0006\u00105\u001a\u00020>2\b\u0010d\u001a\u0004\u0018\u00010\u00042\u0011\u0010¯\u0001\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010LH\u0007J&\u0010°\u0001\u001a\u00020 2\u0006\u0010c\u001a\u00020>2\b\u0010d\u001a\u0004\u0018\u00010\u00042\t\u0010±\u0001\u001a\u0004\u0018\u00010\u0001H\u0007J&\u0010²\u0001\u001a\u00020*2\u0006\u00105\u001a\u00020>2\b\u0010d\u001a\u0004\u0018\u00010\u00042\t\u0010±\u0001\u001a\u0004\u0018\u00010\u0004H\u0007J&\u0010³\u0001\u001a\u00020*2\u0006\u00105\u001a\u00020>2\b\u0010d\u001a\u0004\u0018\u00010\u00042\t\u0010\u0080\u0001\u001a\u0004\u0018\u00010:H\u0007J!\u0010´\u0001\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010P2\b\u0010µ\u0001\u001a\u00030¶\u0001H\u0007J\u0013\u0010·\u0001\u001a\u00020\u00042\b\u0010T\u001a\u0004\u0018\u00010UH\u0007J%\u0010¸\u0001\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010P2\b\u0010µ\u0001\u001a\u00030¶\u0001H\u0007J\t\u0010¹\u0001\u001a\u00020*H\u0002J\t\u0010º\u0001\u001a\u00020\u0006H\u0002J\u0012\u0010»\u0001\u001a\u00020*2\u0007\u0010¼\u0001\u001a\u000200H\u0002J\u0012\u0010½\u0001\u001a\u00020*2\u0007\u0010¼\u0001\u001a\u000200H\u0002J\t\u0010¾\u0001\u001a\u00020*H\u0002J\t\u0010¿\u0001\u001a\u00020*H\u0002J\u0015\u0010À\u0001\u001a\u00020*2\n\u0010Á\u0001\u001a\u0005\u0018\u00010Â\u0001H\u0007J\u001f\u0010Ã\u0001\u001a\u00020\u00042\t\u0010Ä\u0001\u001a\u0004\u0018\u00010\u001a2\t\u0010Å\u0001\u001a\u0004\u0018\u00010\u0004H\u0007J6\u0010Æ\u0001\u001a\u00020*2\u0006\u0010+\u001a\u00020\u001a2\b\u0010,\u001a\u0004\u0018\u00010-2\b\u0010.\u001a\u0004\u0018\u00010\u00042\u0007\u0010Ç\u0001\u001a\u00020 2\u0006\u0010/\u001a\u000200H\u0007J\u001a\u0010È\u0001\u001a\u00020*2\u0006\u0010+\u001a\u00020\u001a2\u0007\u0010¼\u0001\u001a\u000200H\u0007J\u0014\u0010É\u0001\u001a\u0004\u0018\u00010\u00042\u0007\u0010I\u001a\u00030\u0087\u0001H\u0007J\u0013\u0010É\u0001\u001a\u0004\u0018\u00010\u00042\u0006\u0010d\u001a\u00020\u0004H\u0007J\u0016\u0010Ê\u0001\u001a\u0004\u0018\u00010\u00042\t\u0010I\u001a\u0005\u0018\u00010\u0087\u0001H\u0007J\u0015\u0010Ê\u0001\u001a\u0004\u0018\u00010\u00042\b\u0010d\u001a\u0004\u0018\u00010\u0004H\u0007J\u001d\u0010Ë\u0001\u001a\u00020 2\b\u00104\u001a\u0004\u0018\u00010\u00042\b\u00105\u001a\u0004\u0018\u00010\u0004H\u0007J!\u0010Ì\u0001\u001a\u0004\u0018\u00010N2\t\u0010Ä\u0001\u001a\u0004\u0018\u00010\u001a2\t\u0010Í\u0001\u001a\u0004\u0018\u00010\u0004H\u0007J!\u0010Î\u0001\u001a\u0004\u0018\u00010\u001a2\t\u0010Ä\u0001\u001a\u0004\u0018\u00010\u001a2\t\u0010Í\u0001\u001a\u0004\u0018\u00010\u0004H\u0007J*\u0010Ï\u0001\u001a\u00020*2\b\u0010µ\u0001\u001a\u00030¶\u00012\u0015\u0010©\u0001\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010PH\u0007J.\u0010Ð\u0001\u001a\u00020*2\b\u0010µ\u0001\u001a\u00030¶\u00012\u0019\u0010©\u0001\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010PH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0011\u0010\u0015\u001a\u00020\u00168G¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u001a8G¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR\u000e\u0010\u001d\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u001e\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010\u001f\u001a\u00020 8FX\u0087\u0004¢\u0006\f\u0012\u0004\b!\u0010\u0002\u001a\u0004\b\u001f\u0010\"R\u0011\u0010#\u001a\u00020 8G¢\u0006\u0006\u001a\u0004\b#\u0010\"R\u000e\u0010$\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u0013\u0010%\u001a\u0004\u0018\u00010\u00168G¢\u0006\u0006\u001a\u0004\b&\u0010\u0018R\u000e\u0010'\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010(\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n��¨\u0006Ó\u0001"}, d2 = {"Lcom/facebook/internal/Utility;", "", "()V", "ARC_DEVICE_PATTERN", "", "DEFAULT_STREAM_BUFFER_SIZE", "", "EXTRA_APP_EVENTS_INFO_FORMAT_VERSION", "FACEBOOK_PROFILE_FIELDS", "HASH_ALGORITHM_MD5", "HASH_ALGORITHM_SHA1", "HASH_ALGORITHM_SHA256", "INSTAGRAM_PROFILE_FIELDS", "LOG_TAG", "NO_CARRIER", "REFRESH_TIME_FOR_EXTENDED_DEVICE_INFO_MILLIS", "URL_SCHEME", "UTF8", "availableExternalStorageGB", "", "carrierName", "currentLocale", "Ljava/util/Locale;", "getCurrentLocale", "()Ljava/util/Locale;", "dataProcessingOptions", "Lorg/json/JSONObject;", "getDataProcessingOptions", "()Lorg/json/JSONObject;", "deviceTimeZoneName", "deviceTimezoneAbbreviation", "isAutoAppLinkSetup", "", "isAutoAppLinkSetup$annotations", "()Z", "isDataProcessingRestricted", "numCPUCores", "resourceLocale", "getResourceLocale", "timestampOfLastCheck", "totalExternalStorageGB", "appendAnonIdUnderCompliance", "", "params", "attributionIdentifiers", "Lcom/facebook/internal/AttributionIdentifiers;", "anonymousAppDeviceGUID", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "appendAttributionIdUnderCompliance", "areObjectsEqual", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "a", C22021b.f61237c, "(Ljava/lang/Object;Ljava/lang/Object;)Z", "awaitGetGraphMeRequestWithCache", "accessToken", "buildUri", "Landroid/net/Uri;", "authority", "path", "parameters", "Landroid/os/Bundle;", "clearCookiesForDomain", "domain", "clearFacebookCookies", "closeQuietly", "closeable", "Ljava/io/Closeable;", "coerceValueIfNullOrEmpty", "s", "valueIfNullOrEmpty", "convertBytesToGB", "bytes", "", "convertJSONArrayToList", "", "jsonArray", "Lorg/json/JSONArray;", "convertJSONObjectToHashMap", "", "jsonObject", "convertJSONObjectToStringMap", "copyAndCloseInputStream", "inputStream", "Ljava/io/InputStream;", "outputStream", "Ljava/io/OutputStream;", "disconnectQuietly", "connection", "Ljava/net/URLConnection;", "externalStorageExists", "generateRandomString", "length", "getActivityName", "getAppName", "getAppVersion", "getBundleLongAsDate", "Ljava/util/Date;", "bundle", AnalyticsConstants.KEY, "dateBase", "getContentSize", "contentUri", "getCurrentTokenDomainWithDefault", "getGraphDomainFromTokenDomain", "tokenGraphDomain", "getGraphMeRequestWithCache", "Lcom/facebook/GraphRequest;", "getGraphMeRequestWithCacheAsync", "callback", "Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;", "getMetadataApplicationId", "getMethodQuietly", "Ljava/lang/reflect/Method;", "clazz", "Ljava/lang/Class;", "methodName", "parameterTypes", "", "(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;", "className", "(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;", "getProfileFieldsForGraphDomain", "graphDomain", "getStringPropertyAsJSON", "nonJSONPropertyKey", "getUriString", "uri", "handlePermissionResponse", "Lcom/facebook/internal/Utility$PermissionsLists;", "result", "hashBytes", "hash", "Ljava/security/MessageDigest;", "", "hashWithAlgorithm", "algorithm", "invokeMethodQuietly", "receiver", AnalyticsConstants.METHOD, "args", "(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;", "isAutofillAvailable", "isChromeOS", "isContentUri", "isCurrentAccessToken", AnalyticsConstants.TOKEN, "Lcom/facebook/AccessToken;", "isFileUri", "isGooglePlayServicesAvailable", "isNullOrEmpty", AbstractC2405c.f7629a, "", "isWebUri", "jsonArrayToSet", "", "jsonArrayToStringList", "jsonStrToMap", "str", "logd", RemoteMessageConst.Notification.TAG, "e", "Ljava/lang/Exception;", "Lkotlin/Exception;", RemoteMessageConst.MessageBody.MSG, "t", "", "mapToJsonStr", "map", "md5hash", "mustFixWindowParamsForAutofill", "parseUrlQueryString", "queryString", "putCommaSeparatedStringList", "list", "putJSONValueInBundle", "value", "putNonEmptyString", "putUri", "readNonnullStringMapFromParcel", "parcel", "Landroid/os/Parcel;", "readStreamToString", "readStringMapFromParcel", "refreshAvailableExternalStorage", "refreshBestGuessNumberOfCPUCores", "refreshCarrierName", "appContext", "refreshPeriodicExtendedDeviceInfo", "refreshTimezone", "refreshTotalExternalStorage", "runOnNonUiThread", "runnable", "Ljava/lang/Runnable;", "safeGetStringFromResponse", "response", "propertyName", "setAppEventAttributionParameters", "limitEventUsage", "setAppEventExtendedDeviceInfoParameters", "sha1hash", "sha256hash", "stringsEqualOrEmpty", "tryGetJSONArrayFromResponse", "propertyKey", "tryGetJSONObjectFromResponse", "writeNonnullStringMapToParcel", "writeStringMapToParcel", "GraphMeRequestWithCacheCallback", "PermissionsLists", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.internal.q0 */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/q0.class */
public final class C1168q0 {

    /* renamed from: a */
    public static int f3191a = 0;

    /* renamed from: b */
    public static long f3192b = -1;

    /* renamed from: c */
    public static long f3193c = -1;

    /* renamed from: d */
    public static long f3194d = -1;

    /* renamed from: e */
    public static String f3195e = "";

    /* renamed from: f */
    public static String f3196f = "";

    /* renamed from: g */
    public static String f3197g = "NoCarrier";

    @Metadata(d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\bf\u0018��2\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u0012\u0010\u0006\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\bH&¨\u0006\t"}, d2 = {"Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;", "", "onFailure", "", "error", "Lcom/facebook/FacebookException;", "onSuccess", "userInfo", "Lorg/json/JSONObject;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.q0$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/q0$a.class */
    public interface AbstractC1169a {
        /* renamed from: a */
        void mo7327a(JSONObject jSONObject);

        /* renamed from: b */
        void mo7326b(C23222c0 c23222c0);
    }

    @Metadata(d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\f\u0018��2\u00020\u0001B/\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0007R \u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR \u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000bR \u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000e\u0010\t\"\u0004\b\u000f\u0010\u000b¨\u0006\u0010"}, d2 = {"Lcom/facebook/internal/Utility$PermissionsLists;", "", "grantedPermissions", "", "", "declinedPermissions", "expiredPermissions", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "getDeclinedPermissions", "()Ljava/util/List;", "setDeclinedPermissions", "(Ljava/util/List;)V", "getExpiredPermissions", "setExpiredPermissions", "getGrantedPermissions", "setGrantedPermissions", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.q0$b */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/q0$b.class */
    public static final class C1170b {

        /* renamed from: a */
        public List<String> f3198a;

        /* renamed from: b */
        public List<String> f3199b;

        /* renamed from: c */
        public List<String> f3200c;

        public C1170b(List<String> list, List<String> list2, List<String> list3) {
            l.e(list, "grantedPermissions");
            l.e(list2, "declinedPermissions");
            l.e(list3, "expiredPermissions");
            this.f3198a = list;
            this.f3199b = list2;
            this.f3200c = list3;
        }
    }

    /* renamed from: A */
    public static final boolean m41701A() {
        if (C1220a.m41623b(C1168q0.class)) {
            return false;
        }
        try {
            JSONObject m41667p = m41667p();
            if (m41667p == null) {
                return false;
            }
            try {
                JSONArray jSONArray = m41667p.getJSONArray("data_processing_options");
                int length = jSONArray.length();
                if (length <= 0) {
                    return false;
                }
                int i = 0;
                while (true) {
                    int i2 = i;
                    int i3 = i2 + 1;
                    String string = jSONArray.getString(i2);
                    l.d(string, "options.getString(i)");
                    String lowerCase = string.toLowerCase();
                    l.d(lowerCase, "(this as java.lang.String).toLowerCase()");
                    if (l.a(lowerCase, "ldu")) {
                        return true;
                    }
                    if (i3 >= length) {
                        return false;
                    }
                    i = i3;
                }
            } catch (Exception e) {
                return false;
            }
        } catch (Throwable th) {
            C1220a.m41624a(th, C1168q0.class);
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0017, code lost:
        if ((r2.length() == 0) != false) goto L10;
     */
    /* renamed from: B */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean m41700B(java.lang.String r2) {
        /*
            r0 = 0
            r3 = r0
            r0 = r2
            if (r0 == 0) goto L1a
            r0 = r2
            int r0 = r0.length()
            if (r0 != 0) goto L14
            r0 = 1
            r4 = r0
            goto L16
        L14:
            r0 = 0
            r4 = r0
        L16:
            r0 = r4
            if (r0 == 0) goto L1c
        L1a:
            r0 = 1
            r3 = r0
        L1c:
            r0 = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.C1168q0.m41700B(java.lang.String):boolean");
    }

    /* renamed from: C */
    public static final boolean m41699C(Uri uri) {
        boolean z;
        if (uri != null) {
            z = true;
            if (!r.n(Protocols.HTTP, uri.getScheme(), true)) {
                z = true;
                if (!r.n("https", uri.getScheme(), true)) {
                    if (r.n("fbstaging", uri.getScheme(), true)) {
                        z = true;
                    }
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: D */
    public static final List<String> m41698D(JSONArray jSONArray) throws JSONException {
        l.e(jSONArray, "jsonArray");
        ArrayList arrayList = new ArrayList();
        int length = jSONArray.length();
        if (length > 0) {
            int i = 0;
            while (true) {
                int i2 = i;
                int i3 = i2 + 1;
                arrayList.add(jSONArray.getString(i2));
                if (i3 >= length) {
                    break;
                }
                i = i3;
            }
        }
        return arrayList;
    }

    /* renamed from: E */
    public static final Map<String, String> m41697E(String str) {
        HashMap hashMap;
        l.e(str, "str");
        if (str.length() == 0) {
            hashMap = new HashMap();
        } else {
            try {
                HashMap hashMap2 = new HashMap();
                JSONObject jSONObject = new JSONObject(str);
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    l.d(next, AnalyticsConstants.KEY);
                    String string = jSONObject.getString(next);
                    l.d(string, "jsonObject.getString(key)");
                    hashMap2.put(next, string);
                }
                hashMap = hashMap2;
            } catch (JSONException e) {
                hashMap = new HashMap();
            }
        }
        return hashMap;
    }

    /* renamed from: F */
    public static final void m41696F(String str, Exception exc) {
        C23228f0 c23228f0 = C23228f0.f64291a;
        if (!C23228f0.f64299i || str == null) {
            return;
        }
        exc.getClass().getSimpleName();
        exc.getMessage();
    }

    /* renamed from: G */
    public static final void m41695G(String str, String str2, Throwable th) {
        C23228f0 c23228f0 = C23228f0.f64291a;
        if (C23228f0.f64299i) {
            m41700B(str);
        }
    }

    /* renamed from: H */
    public static final String m41694H(Map<String, String> map) {
        String str;
        l.e(map, "map");
        if (map.isEmpty()) {
            str = "";
        } else {
            try {
                JSONObject jSONObject = new JSONObject();
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    jSONObject.put(entry.getKey(), entry.getValue());
                }
                str = jSONObject.toString();
            } catch (JSONException e) {
                str = "";
            }
            l.d(str, "{\n      try {\n        val jsonObject = JSONObject()\n        for ((key, value) in map) {\n          jsonObject.put(key, value)\n        }\n        jsonObject.toString()\n      } catch (_e: JSONException) {\n        \"\"\n      }\n    }");
        }
        return str;
    }

    /* renamed from: I */
    public static final String m41693I(String str) {
        String str2;
        l.e(str, AnalyticsConstants.KEY);
        byte[] bytes = str.getBytes(b.a);
        l.d(bytes, "(this as java.lang.String).getBytes(charset)");
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            l.d(messageDigest, "hash");
            messageDigest.update(bytes);
            byte[] digest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            l.d(digest, "digest");
            int length = digest.length;
            int i = 0;
            while (i < length) {
                byte b = digest[i];
                i++;
                sb.append(Integer.toHexString((b >> 4) & 15));
                sb.append(Integer.toHexString((b >> 0) & 15));
            }
            str2 = sb.toString();
            l.d(str2, "builder.toString()");
        } catch (NoSuchAlgorithmException e) {
            str2 = null;
        }
        return str2;
    }

    /* renamed from: J */
    public static final Bundle m41692J(String str) {
        Bundle bundle = new Bundle();
        if (!m41700B(str)) {
            if (str == null) {
                throw new IllegalStateException("Required value was null.".toString());
            }
            Object[] array = v.U(str, new String[]{ContainerUtils.FIELD_DELIMITER}, false, 0, 6).toArray(new String[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            String[] strArr = (String[]) array;
            int length = strArr.length;
            int i = 0;
            while (i < length) {
                String str2 = strArr[i];
                int i2 = i + 1;
                Object[] array2 = v.U(str2, new String[]{ContainerUtils.KEY_VALUE_DELIMITER}, false, 0, 6).toArray(new String[0]);
                Objects.requireNonNull(array2, "null cannot be cast to non-null type kotlin.Array<T>");
                String[] strArr2 = (String[]) array2;
                try {
                    if (strArr2.length == 2) {
                        bundle.putString(URLDecoder.decode(strArr2[0], StringConstant.UTF8), URLDecoder.decode(strArr2[1], StringConstant.UTF8));
                        i = i2;
                    } else {
                        i = i2;
                        if (strArr2.length == 1) {
                            bundle.putString(URLDecoder.decode(strArr2[0], StringConstant.UTF8), "");
                            i = i2;
                        }
                    }
                } catch (UnsupportedEncodingException e) {
                    m41696F("FacebookSDK", e);
                    i = i2;
                }
            }
        }
        return bundle;
    }

    /* renamed from: K */
    public static final boolean m41691K(Bundle bundle, String str, Object obj) {
        l.e(bundle, "bundle");
        if (obj instanceof Boolean) {
            bundle.putBoolean(str, ((Boolean) obj).booleanValue());
            return true;
        } else if (obj instanceof boolean[]) {
            bundle.putBooleanArray(str, (boolean[]) obj);
            return true;
        } else if (obj instanceof Double) {
            bundle.putDouble(str, ((Number) obj).doubleValue());
            return true;
        } else if (obj instanceof double[]) {
            bundle.putDoubleArray(str, (double[]) obj);
            return true;
        } else if (obj instanceof Integer) {
            bundle.putInt(str, ((Number) obj).intValue());
            return true;
        } else if (obj instanceof int[]) {
            bundle.putIntArray(str, (int[]) obj);
            return true;
        } else if (obj instanceof Long) {
            bundle.putLong(str, ((Number) obj).longValue());
            return true;
        } else if (obj instanceof long[]) {
            bundle.putLongArray(str, (long[]) obj);
            return true;
        } else if (obj instanceof String) {
            bundle.putString(str, (String) obj);
            return true;
        } else {
            bundle.putString(str, ((JSONArray) obj).toString());
            return true;
        }
    }

    /* renamed from: L */
    public static final Map<String, String> m41690L(Parcel parcel) {
        int i;
        l.e(parcel, "parcel");
        int readInt = parcel.readInt();
        if (readInt < 0) {
            return null;
        }
        HashMap hashMap = new HashMap();
        int i2 = 0;
        if (readInt <= 0) {
            return hashMap;
        }
        do {
            i = i2 + 1;
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            if (readString != null && readString2 != null) {
                hashMap.put(readString, readString2);
            }
            i2 = i;
        } while (i < readInt);
        return hashMap;
    }

    /* renamed from: M */
    public static final String m41689M(InputStream inputStream) throws IOException {
        InputStreamReader inputStreamReader;
        BufferedInputStream bufferedInputStream;
        Throwable th;
        try {
            bufferedInputStream = new BufferedInputStream(inputStream);
            try {
                inputStreamReader = new InputStreamReader(bufferedInputStream);
            } catch (Throwable th2) {
                th = th2;
                inputStreamReader = null;
            }
        } catch (Throwable th3) {
            th = th3;
            bufferedInputStream = null;
            inputStreamReader = null;
        }
        try {
            StringBuilder sb = new StringBuilder();
            char[] cArr = new char[2048];
            while (true) {
                int read = inputStreamReader.read(cArr);
                if (read == -1) {
                    String sb2 = sb.toString();
                    l.d(sb2, "{\n      bufferedInputStream = BufferedInputStream(inputStream)\n      reader = InputStreamReader(bufferedInputStream)\n      val stringBuilder = StringBuilder()\n      val bufferSize = 1024 * 2\n      val buffer = CharArray(bufferSize)\n      var n = 0\n      while (reader.read(buffer).also { n = it } != -1) {\n        stringBuilder.append(buffer, 0, n)\n      }\n      stringBuilder.toString()\n    }");
                    m41678e(bufferedInputStream);
                    m41678e(inputStreamReader);
                    return sb2;
                }
                sb.append(cArr, 0, read);
            }
        } catch (Throwable th4) {
            th = th4;
            m41678e(bufferedInputStream);
            m41678e(inputStreamReader);
            throw th;
        }
    }

    /* renamed from: N */
    public static final void m41688N(Runnable runnable) {
        try {
            C23228f0 c23228f0 = C23228f0.f64291a;
            C23228f0.m7350e().execute(runnable);
        } catch (Exception e) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0136  */
    /* renamed from: O */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m41687O(org.json.JSONObject r7, com.facebook.internal.C1165q r8, java.lang.String r9, boolean r10, android.content.Context r11) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 528
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.C1168q0.m41687O(org.json.JSONObject, com.facebook.internal.q, java.lang.String, boolean, android.content.Context):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:91:0x02aa A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v91, types: [double] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:75:0x030a -> B:8:0x0083). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:81:0x0326 -> B:69:0x02c6). Please submit an issue!!! */
    /* renamed from: P */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m41686P(org.json.JSONObject r5, android.content.Context r6) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 810
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.C1168q0.m41686P(org.json.JSONObject, android.content.Context):void");
    }

    /* renamed from: Q */
    public static final String m41685Q(byte[] bArr) {
        String str;
        l.e(bArr, "bytes");
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            l.d(messageDigest, "hash");
            messageDigest.update(bArr);
            byte[] digest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            l.d(digest, "digest");
            int length = digest.length;
            int i = 0;
            while (i < length) {
                byte b = digest[i];
                i++;
                sb.append(Integer.toHexString((b >> 4) & 15));
                sb.append(Integer.toHexString((b >> 0) & 15));
            }
            str = sb.toString();
            l.d(str, "builder.toString()");
        } catch (NoSuchAlgorithmException e) {
            str = null;
        }
        return str;
    }

    /* renamed from: R */
    public static final String m41684R(String str) {
        String str2;
        if (str != null) {
            byte[] bytes = str.getBytes(b.a);
            l.d(bytes, "(this as java.lang.String).getBytes(charset)");
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                l.d(messageDigest, "hash");
                messageDigest.update(bytes);
                byte[] digest = messageDigest.digest();
                StringBuilder sb = new StringBuilder();
                l.d(digest, "digest");
                int length = digest.length;
                int i = 0;
                while (i < length) {
                    byte b = digest[i];
                    i++;
                    sb.append(Integer.toHexString((b >> 4) & 15));
                    sb.append(Integer.toHexString((b >> 0) & 15));
                }
                str2 = sb.toString();
                l.d(str2, "builder.toString()");
            } catch (NoSuchAlgorithmException e) {
            }
            return str2;
        }
        str2 = null;
        return str2;
    }

    /* renamed from: S */
    public static final void m41683S(Parcel parcel, Map<String, String> map) {
        l.e(parcel, "parcel");
        if (map == null) {
            parcel.writeInt(-1);
            return;
        }
        parcel.writeInt(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            parcel.writeString(entry.getKey());
            parcel.writeString(entry.getValue());
        }
    }

    /* renamed from: a */
    public static final <T> boolean m41682a(T t, T t2) {
        return t == null ? t2 == null : l.a(t, t2);
    }

    /* renamed from: b */
    public static final Uri m41681b(String str, String str2, Bundle bundle) {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("https");
        builder.authority(str);
        builder.path(str2);
        if (bundle != null) {
            for (String str3 : bundle.keySet()) {
                Object obj = bundle.get(str3);
                if (obj instanceof String) {
                    builder.appendQueryParameter(str3, (String) obj);
                }
            }
        }
        Uri build = builder.build();
        l.d(build, "builder.build()");
        return build;
    }

    /* renamed from: c */
    public static final void m41680c(Context context, String str) {
        CookieSyncManager.createInstance(context).sync();
        CookieManager cookieManager = CookieManager.getInstance();
        String cookie = cookieManager.getCookie(str);
        if (cookie == null) {
            return;
        }
        Object[] array = v.U(cookie, new String[]{";"}, false, 0, 6).toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        String[] strArr = (String[]) array;
        int length = strArr.length;
        int i = 0;
        while (i < length) {
            String str2 = strArr[i];
            int i2 = i + 1;
            Object[] array2 = v.U(str2, new String[]{ContainerUtils.KEY_VALUE_DELIMITER}, false, 0, 6).toArray(new String[0]);
            Objects.requireNonNull(array2, "null cannot be cast to non-null type kotlin.Array<T>");
            String[] strArr2 = (String[]) array2;
            i = i2;
            if (strArr2.length > 0) {
                String str3 = strArr2[0];
                int length2 = str3.length() - 1;
                int i3 = 0;
                boolean z = false;
                while (i3 <= length2) {
                    boolean z2 = l.g(str3.charAt(!z ? i3 : length2), 32) <= 0;
                    if (!z) {
                        if (!z2) {
                            z = true;
                        } else {
                            i3++;
                        }
                    } else if (!z2) {
                        break;
                    } else {
                        length2--;
                    }
                }
                cookieManager.setCookie(str, l.j(str3.subSequence(i3, length2 + 1).toString(), "=;expires=Sat, 1 Jan 2000 00:00:01 UTC;"));
                i = i2;
            }
        }
        cookieManager.removeExpiredCookie();
    }

    /* renamed from: d */
    public static final void m41679d(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        m41680c(context, "facebook.com");
        m41680c(context, ".facebook.com");
        m41680c(context, "https://facebook.com");
        m41680c(context, "https://.facebook.com");
    }

    /* renamed from: e */
    public static final void m41678e(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (IOException e) {
        }
    }

    /* renamed from: f */
    public static final String m41677f(String str, String str2) {
        String str3 = str;
        if (m41700B(str)) {
            str3 = str2;
        }
        return str3;
    }

    /* renamed from: g */
    public static final List<String> m41676g(JSONArray jSONArray) {
        ArrayList arrayList;
        l.e(jSONArray, "jsonArray");
        try {
            ArrayList arrayList2 = new ArrayList();
            int i = 0;
            int length = jSONArray.length();
            arrayList = arrayList2;
            if (length > 0) {
                while (true) {
                    int i2 = i + 1;
                    String string = jSONArray.getString(i);
                    l.d(string, "jsonArray.getString(i)");
                    arrayList2.add(string);
                    if (i2 >= length) {
                        break;
                    }
                    i = i2;
                }
                arrayList = arrayList2;
            }
        } catch (JSONException e) {
            arrayList = new ArrayList();
        }
        return arrayList;
    }

    /* renamed from: h */
    public static final Map<String, Object> m41675h(JSONObject jSONObject) {
        l.e(jSONObject, "jsonObject");
        HashMap hashMap = new HashMap();
        JSONArray names = jSONObject.names();
        if (names == null) {
            return hashMap;
        }
        int i = 0;
        int length = names.length();
        if (length > 0) {
            while (true) {
                int i2 = i + 1;
                try {
                    String string = names.getString(i);
                    l.d(string, "keys.getString(i)");
                    Object obj = jSONObject.get(string);
                    Map<String, Object> map = obj;
                    if (obj instanceof JSONObject) {
                        map = m41675h((JSONObject) obj);
                    }
                    l.d(map, "value");
                    hashMap.put(string, map);
                } catch (JSONException e) {
                }
                if (i2 >= length) {
                    break;
                }
                i = i2;
            }
        }
        return hashMap;
    }

    /* renamed from: i */
    public static final Map<String, String> m41674i(JSONObject jSONObject) {
        l.e(jSONObject, "jsonObject");
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            String optString = jSONObject.optString(next);
            if (optString != null) {
                l.d(next, AnalyticsConstants.KEY);
                hashMap.put(next, optString);
            }
        }
        return hashMap;
    }

    /* renamed from: j */
    public static final int m41673j(InputStream inputStream, OutputStream outputStream) throws IOException {
        BufferedInputStream bufferedInputStream;
        Throwable th;
        int i;
        l.e(outputStream, "outputStream");
        try {
            bufferedInputStream = new BufferedInputStream(inputStream);
        } catch (Throwable th2) {
            th = th2;
            bufferedInputStream = null;
        }
        try {
            byte[] bArr = new byte[8192];
            int i2 = 0;
            while (true) {
                i = i2;
                int read = bufferedInputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                outputStream.write(bArr, 0, read);
                i2 = i + read;
            }
            bufferedInputStream.close();
            if (inputStream != null) {
                inputStream.close();
            }
            return i;
        } catch (Throwable th3) {
            th = th3;
            if (bufferedInputStream != null) {
                bufferedInputStream.close();
            }
            if (inputStream != null) {
                inputStream.close();
            }
            throw th;
        }
    }

    /* renamed from: k */
    public static final void m41672k(URLConnection uRLConnection) {
        if (uRLConnection == null || !(uRLConnection instanceof HttpURLConnection)) {
            return;
        }
        ((HttpURLConnection) uRLConnection).disconnect();
    }

    /* renamed from: l */
    public static final String m41671l(Context context) {
        String str;
        if (context == null) {
            str = AnalyticsConstants.NULL;
        } else if (context == context.getApplicationContext()) {
            str = "unknown";
        } else {
            str = context.getClass().getSimpleName();
            l.d(str, "{\n      context.javaClass.simpleName\n    }");
        }
        return str;
    }

    /* renamed from: m */
    public static final String m41670m(Context context) {
        String str;
        String str2;
        l.e(context, AnalyticsConstants.CONTEXT);
        try {
            C23228f0 c23228f0 = C23228f0.f64291a;
            C1172r0 c1172r0 = C1172r0.f3203a;
            C1172r0.m41649f();
            str2 = C23228f0.f64295e;
        } catch (Exception e) {
            str = "";
        }
        if (str2 != null) {
            return str2;
        }
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        int i = applicationInfo.labelRes;
        if (i == 0) {
            str = applicationInfo.nonLocalizedLabel.toString();
        } else {
            str = context.getString(i);
            l.d(str, "context.getString(stringId)");
        }
        return str;
    }

    /* renamed from: n */
    public static final String m41669n() {
        C23228f0 c23228f0 = C23228f0.f64291a;
        Context m7354a = C23228f0.m7354a();
        try {
            PackageInfo packageInfo = m7354a.getPackageManager().getPackageInfo(m7354a.getPackageName(), 0);
            if (packageInfo != null) {
                return packageInfo.versionName;
            }
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* renamed from: o */
    public static final Date m41668o(Bundle bundle, String str, Date date) {
        char c;
        l.e(date, "dateBase");
        Object obj = bundle.get(str);
        if (obj instanceof Long) {
            c = ((Number) obj).longValue();
        } else if (!(obj instanceof String)) {
            return null;
        } else {
            try {
                c = Long.parseLong((String) obj);
            } catch (NumberFormatException e) {
                return null;
            }
        }
        return c == 0 ? new Date((long) RecyclerView.FOREVER_NS) : new Date((c * 1000) + date.getTime());
    }

    /* renamed from: p */
    public static final JSONObject m41667p() {
        if (C1220a.m41623b(C1168q0.class)) {
            return null;
        }
        try {
            C23228f0 c23228f0 = C23228f0.f64291a;
            String string = C23228f0.m7354a().getSharedPreferences("com.facebook.sdk.DataProcessingOptions", 0).getString("data_processing_options", null);
            if (string == null) {
                return null;
            }
            try {
                return new JSONObject(string);
            } catch (JSONException e) {
                return null;
            }
        } catch (Throwable th) {
            C1220a.m41624a(th, C1168q0.class);
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0054, code lost:
        if (r11 != null) goto L11;
     */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m41666q(final java.lang.String r10, final com.facebook.internal.C1168q0.AbstractC1169a r11) {
        /*
            r0 = r10
            java.lang.String r1 = "accessToken"
            s1.z.c.l.e(r0, r1)
            r0 = r11
            java.lang.String r1 = "callback"
            s1.z.c.l.e(r0, r1)
            com.facebook.internal.n0 r0 = com.facebook.internal.C1159n0.f3167a
            r12 = r0
            r0 = r10
            java.lang.String r1 = "accessToken"
            s1.z.c.l.e(r0, r1)
            java.util.concurrent.ConcurrentHashMap<java.lang.String, org.json.JSONObject> r0 = com.facebook.internal.C1159n0.f3168b
            r1 = r10
            java.lang.Object r0 = r0.get(r1)
            org.json.JSONObject r0 = (org.json.JSONObject) r0
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L30
            r0 = r11
            r1 = r12
            r0.mo7327a(r1)
            return
        L30:
            com.facebook.internal.k r0 = new com.facebook.internal.k
            r1 = r0
            r2 = r11
            r3 = r10
            r1.<init>()
            r12 = r0
            android.os.Bundle r0 = new android.os.Bundle
            r1 = r0
            r1.<init>()
            r13 = r0
            com.facebook.AccessToken$c r0 = com.facebook.AccessToken.f2460l
            r11 = r0
            com.facebook.AccessToken r0 = com.facebook.AccessToken.C0907c.m42030b()
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L5a
            r0 = r11
            java.lang.String r0 = r0.f2475k
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L5a
            goto L5e
        L5a:
            java.lang.String r0 = "facebook"
            r11 = r0
        L5e:
            r0 = r11
            java.lang.String r1 = "instagram"
            boolean r0 = s1.z.c.l.a(r0, r1)
            if (r0 == 0) goto L6f
            java.lang.String r0 = "id,name,profile_picture"
            r11 = r0
            goto L73
        L6f:
            java.lang.String r0 = "id,name,first_name,middle_name,last_name"
            r11 = r0
        L73:
            r0 = r13
            java.lang.String r1 = "fields"
            r2 = r11
            r0.putString(r1, r2)
            r0 = r13
            java.lang.String r1 = "access_token"
            r2 = r10
            r0.putString(r1, r2)
            com.facebook.GraphRequest$c r0 = com.facebook.GraphRequest.f2543k
            r10 = r0
            com.facebook.GraphRequest r0 = new com.facebook.GraphRequest
            r1 = r0
            r2 = 0
            java.lang.String r3 = "me"
            r4 = 0
            r5 = 0
            e.j.p r6 = new e.j.p
            r7 = r6
            r8 = 0
            r7.<init>()
            r7 = 0
            r8 = 32
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            r10 = r0
            r0 = r10
            r1 = r13
            r0.m42008l(r1)
            r0 = r10
            e.j.m0 r1 = p193e.p1538j.EnumC23246m0.GET
            r0.f2556i = r1
            r0 = r10
            r1 = r12
            r0.m42009k(r1)
            r0 = r10
            e.j.j0 r0 = r0.m42016d()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.C1168q0.m41666q(java.lang.String, com.facebook.internal.q0$a):void");
    }

    /* renamed from: r */
    public static final String m41665r(Context context) {
        C1172r0 c1172r0 = C1172r0.f3203a;
        C1172r0.m41651d(context, AnalyticsConstants.CONTEXT);
        C23228f0 c23228f0 = C23228f0.f64291a;
        return C23228f0.m7353b();
    }

    /* renamed from: s */
    public static final Method m41664s(Class<?> cls, String str, Class<?>... clsArr) {
        Method method;
        l.e(cls, "clazz");
        l.e(str, "methodName");
        l.e(clsArr, "parameterTypes");
        try {
            method = cls.getMethod(str, (Class[]) Arrays.copyOf(clsArr, clsArr.length));
        } catch (NoSuchMethodException e) {
            method = null;
        }
        return method;
    }

    /* renamed from: t */
    public static final Method m41663t(String str, String str2, Class<?>... clsArr) {
        Method method;
        l.e(str, "className");
        l.e(str2, "methodName");
        l.e(clsArr, "parameterTypes");
        try {
            Class<?> cls = Class.forName(str);
            l.d(cls, "forName(className)");
            method = m41664s(cls, str2, (Class[]) Arrays.copyOf(clsArr, clsArr.length));
        } catch (ClassNotFoundException e) {
            method = null;
        }
        return method;
    }

    /* renamed from: u */
    public static final Locale m41662u() {
        Locale locale;
        try {
            C23228f0 c23228f0 = C23228f0.f64291a;
            locale = C23228f0.m7354a().getResources().getConfiguration().locale;
        } catch (Exception e) {
            locale = null;
        }
        return locale;
    }

    /* renamed from: v */
    public static final Object m41661v(JSONObject jSONObject, String str, String str2) throws JSONException {
        l.e(jSONObject, "jsonObject");
        Object opt = jSONObject.opt(str);
        Object obj = opt;
        if (opt != null) {
            obj = opt;
            if (opt instanceof String) {
                obj = new JSONTokener((String) opt).nextValue();
            }
        }
        JSONObject jSONObject2 = obj;
        if (obj != null) {
            jSONObject2 = obj;
            if (!(obj instanceof JSONObject)) {
                jSONObject2 = obj;
                if (!(obj instanceof JSONArray)) {
                    if (str2 == null) {
                        throw new C23222c0("Got an unexpected non-JSON object.");
                    }
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.putOpt(str2, obj);
                    jSONObject2 = jSONObject3;
                }
            }
        }
        return jSONObject2;
    }

    /* renamed from: w */
    public static final C1170b m41660w(JSONObject jSONObject) throws JSONException {
        String optString;
        l.e(jSONObject, "result");
        JSONArray jSONArray = jSONObject.getJSONObject("permissions").getJSONArray(RemoteMessageConst.DATA);
        ArrayList arrayList = new ArrayList(jSONArray.length());
        ArrayList arrayList2 = new ArrayList(jSONArray.length());
        ArrayList arrayList3 = new ArrayList(jSONArray.length());
        int length = jSONArray.length();
        if (length > 0) {
            int i = 0;
            while (true) {
                int i2 = i;
                int i3 = i2 + 1;
                JSONObject optJSONObject = jSONArray.optJSONObject(i2);
                String optString2 = optJSONObject.optString("permission");
                if (optString2 != null && !l.a(optString2, "installed") && (optString = optJSONObject.optString(UpdateKey.STATUS)) != null) {
                    int hashCode = optString.hashCode();
                    if (hashCode != -1309235419) {
                        if (hashCode != 280295099) {
                            if (hashCode == 568196142 && optString.equals("declined")) {
                                arrayList2.add(optString2);
                            }
                        } else if (optString.equals("granted")) {
                            arrayList.add(optString2);
                        }
                    } else if (optString.equals("expired")) {
                        arrayList3.add(optString2);
                    }
                }
                if (i3 >= length) {
                    break;
                }
                i = i3;
            }
        }
        return new C1170b(arrayList, arrayList2, arrayList3);
    }

    /* renamed from: x */
    public static final Object m41659x(Object obj, Method method, Object... objArr) {
        Object obj2;
        l.e(method, AnalyticsConstants.METHOD);
        l.e(objArr, "args");
        try {
            obj2 = method.invoke(obj, Arrays.copyOf(objArr, objArr.length));
        } catch (IllegalAccessException | InvocationTargetException e) {
            obj2 = null;
        }
        return obj2;
    }

    /* renamed from: y */
    public static final boolean m41658y() {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            C23228f0 c23228f0 = C23228f0.f64291a;
            String format = String.format("fb%s://applinks", Arrays.copyOf(new Object[]{C23228f0.m7353b()}, 1));
            l.d(format, "java.lang.String.format(format, *args)");
            intent.setData(Uri.parse(format));
            Context m7354a = C23228f0.m7354a();
            PackageManager packageManager = m7354a.getPackageManager();
            String packageName = m7354a.getPackageName();
            Iterator<ResolveInfo> it = packageManager.queryIntentActivities(intent, 65536).iterator();
            do {
                if (!it.hasNext()) {
                    return false;
                }
            } while (!l.a(packageName, it.next().activityInfo.packageName));
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: z */
    public static final boolean m41657z(Context context) {
        boolean z;
        l.e(context, AnalyticsConstants.CONTEXT);
        if (Build.VERSION.SDK_INT >= 27) {
            z = context.getPackageManager().hasSystemFeature("android.hardware.type.pc");
        } else {
            String str = Build.DEVICE;
            if (str != null) {
                l.d(str, "DEVICE");
                if (new h(".+_cheets|cheets_.+").d(str)) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }
}
