package p193e.p1485h.p1486a.p1488b;

import android.app.NotificationManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.service.notification.StatusBarNotification;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.clevertap.android.sdk.CleverTapInstanceConfig;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.Objects;
import kotlin.Metadata;
import org.json.JSONArray;
import p1727n3.p1789g0.C26232y;
import p1727n3.p1807k.p1808a.C26450q;
import p193e.p1485h.p1486a.p1488b.p1491j.C22694a;
import p193e.p1485h.p1486a.p1488b.p1491j.C22695b;
import p193e.p1485h.p1486a.p1488b.p1491j.C22696c;
import p193e.p1485h.p1486a.p1488b.p1491j.C22697d;
import p193e.p1485h.p1486a.p1488b.p1491j.C22698e;
import p193e.p1485h.p1486a.p1488b.p1491j.C22699f;
import p193e.p1485h.p1486a.p1488b.p1491j.C22700g;
import p193e.p1485h.p1486a.p1488b.p1491j.C22702i;
import p193e.p1485h.p1486a.p1488b.p1491j.C22703j;
import p193e.p1485h.p1486a.p1488b.p1492k.AbstractC22707k;
import p193e.p1485h.p1486a.p1488b.p1492k.C22708l;
import p193e.p1485h.p1486a.p1493c.C22773p;
import p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22863e;
import p193e.p1485h.p1486a.p1493c.p1507w0.C22862d;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\u0017\n\u0002\u0010��\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\bS\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\n\u0018�� ¨\u00012\u00020\u0001:\u0004¨\u0001©\u0001B\u0017\b\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B\u001f\b\u0012\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\t\u0010\u0097\u0001\u001a\u00020\u0012H\u0016J\u0013\u0010\u0098\u0001\u001a\u0004\u0018\u00010:2\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0013\u0010\u0099\u0001\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0011\u0010\u009a\u0001\u001a\u0004\u0018\u00010\"H\u0002¢\u0006\u0003\u0010\u009b\u0001J\u001b\u0010\u009c\u0001\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\u0012\u0010\u009d\u0001\u001a\u00030\u009e\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J6\u0010\u009f\u0001\u001a\u0005\u0018\u00010 \u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00032\b\u0010¡\u0001\u001a\u00030 \u00012\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010!\u001a\u00020\"H\u0016J\u0012\u0010¢\u0001\u001a\u00030\u009e\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\u001b\u0010£\u0001\u001a\u00030\u009e\u00012\u0007\u0010\u008f\u0001\u001a\u00020\"2\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J$\u0010¤\u0001\u001a\u00030\u009e\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0002J3\u0010¥\u0001\u001a\u00030\u009e\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\"2\t\u0010¦\u0001\u001a\u0004\u0018\u00010\"H\u0003¢\u0006\u0003\u0010§\u0001R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\"\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\"\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001c\u0010\u0014\"\u0004\b\u001d\u0010\u0016R\"\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001f\u0010\u0014\"\u0004\b \u0010\u0016R\u001a\u0010!\u001a\u00020\"X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u0010\u0010'\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n��R\"\u0010(\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b)\u0010\u0014\"\u0004\b*\u0010\u0016R\u001c\u0010+\u001a\u0004\u0018\u00010\u0012X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u001c\u00100\u001a\u0004\u0018\u00010\u0012X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b1\u0010-\"\u0004\b2\u0010/R\u0010\u00103\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n��R\u0010\u00104\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n��R\u0016\u00105\u001a\n\u0012\u0004\u0012\u00020\"\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n��R\u001c\u00106\u001a\u0004\u0018\u00010\u0012X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b7\u0010-\"\u0004\b8\u0010/R\u0010\u00109\u001a\u0004\u0018\u00010:X\u0082\u000e¢\u0006\u0002\n��R\u001c\u0010;\u001a\u0004\u0018\u00010\u0012X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b<\u0010-\"\u0004\b=\u0010/R\u001a\u0010>\u001a\u00020\"X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b?\u0010$\"\u0004\b@\u0010&R\u001c\u0010A\u001a\u0004\u0018\u00010BX\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\bC\u0010D\"\u0004\bE\u0010FR\u001a\u0010G\u001a\u00020\"X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\bH\u0010$\"\u0004\bI\u0010&R\u0010\u0010J\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n��R\u001c\u0010K\u001a\u0004\u0018\u00010\u0012X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\bL\u0010-\"\u0004\bM\u0010/R\u001c\u0010N\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bO\u0010-\"\u0004\bP\u0010/R\u001c\u0010Q\u001a\u0004\u0018\u00010\u0012X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\bR\u0010-\"\u0004\bS\u0010/R\u001c\u0010T\u001a\u0004\u0018\u00010\u0012X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\bU\u0010-\"\u0004\bV\u0010/R\u001c\u0010W\u001a\u0004\u0018\u00010\u0012X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\bX\u0010-\"\u0004\bY\u0010/R\u001c\u0010Z\u001a\u0004\u0018\u00010\u0012X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b[\u0010-\"\u0004\b\\\u0010/R\u001c\u0010]\u001a\u0004\u0018\u00010\u0012X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b^\u0010-\"\u0004\b_\u0010/R\u0010\u0010`\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n��R\u001c\u0010a\u001a\u0004\u0018\u00010\u0012X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\bb\u0010-\"\u0004\bc\u0010/R\u001c\u0010d\u001a\u0004\u0018\u00010\u0012X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\be\u0010-\"\u0004\bf\u0010/R\u001c\u0010g\u001a\u0004\u0018\u00010\u0012X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\bh\u0010-\"\u0004\bi\u0010/R\u001c\u0010j\u001a\u0004\u0018\u00010\u0012X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\bk\u0010-\"\u0004\bl\u0010/R\u001c\u0010m\u001a\u0004\u0018\u00010\u0012X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\bn\u0010-\"\u0004\bo\u0010/R\u001c\u0010p\u001a\u0004\u0018\u00010\u0012X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\bq\u0010-\"\u0004\br\u0010/R\u001c\u0010s\u001a\u0004\u0018\u00010\u0012X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\bt\u0010-\"\u0004\bu\u0010/R\u001c\u0010v\u001a\u0004\u0018\u00010BX\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\bw\u0010D\"\u0004\bx\u0010FR\u001c\u0010y\u001a\u0004\u0018\u00010\u0012X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\bz\u0010-\"\u0004\b{\u0010/R\u001c\u0010|\u001a\u0004\u0018\u00010\u0012X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b}\u0010-\"\u0004\b~\u0010/R\u001e\u0010\u007f\u001a\u0004\u0018\u00010\u0012X\u0080\u000e¢\u0006\u0010\n��\u001a\u0005\b\u0080\u0001\u0010-\"\u0005\b\u0081\u0001\u0010/R\u001d\u0010\u0082\u0001\u001a\u00020\"X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b\u0083\u0001\u0010$\"\u0005\b\u0084\u0001\u0010&R\u001d\u0010\u0085\u0001\u001a\u00020\"X\u0086\u000e¢\u0006\u0010\n��\u001a\u0005\b\u0086\u0001\u0010$\"\u0005\b\u0087\u0001\u0010&R\u001f\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u0012X\u0080\u000e¢\u0006\u0010\n��\u001a\u0005\b\u0089\u0001\u0010-\"\u0005\b\u008a\u0001\u0010/R\u0011\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n��R\u001f\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u0012X\u0080\u000e¢\u0006\u0010\n��\u001a\u0005\b\u008d\u0001\u0010-\"\u0005\b\u008e\u0001\u0010/R\u001d\u0010\u008f\u0001\u001a\u00020\"X\u0080\u000e¢\u0006\u0010\n��\u001a\u0005\b\u0090\u0001\u0010$\"\u0005\b\u0091\u0001\u0010&R%\u0010\u0092\u0001\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011X\u0080\u000e¢\u0006\u0010\n��\u001a\u0005\b\u0093\u0001\u0010\u0014\"\u0005\b\u0094\u0001\u0010\u0016R\u0012\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u0096\u0001X\u0082\u000e¢\u0006\u0002\n��¨\u0006ª\u0001"}, d2 = {"Lcom/clevertap/android/pushtemplates/TemplateRenderer;", "Lcom/clevertap/android/sdk/pushnotification/INotificationRenderer;", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "extras", "Landroid/os/Bundle;", "(Landroid/content/Context;Landroid/os/Bundle;)V", DTBMetricsConfiguration.CONFIG_DIR, "Lcom/clevertap/android/sdk/CleverTapInstanceConfig;", "(Landroid/content/Context;Landroid/os/Bundle;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)V", "actions", "Lorg/json/JSONArray;", "getActions", "()Lorg/json/JSONArray;", "setActions", "(Lorg/json/JSONArray;)V", "bigTextList", "Ljava/util/ArrayList;", "", "getBigTextList$clevertap_pushtemplates_release", "()Ljava/util/ArrayList;", "setBigTextList$clevertap_pushtemplates_release", "(Ljava/util/ArrayList;)V", "getConfig$clevertap_pushtemplates_release", "()Lcom/clevertap/android/sdk/CleverTapInstanceConfig;", "setConfig$clevertap_pushtemplates_release", "(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)V", "deepLinkList", "getDeepLinkList$clevertap_pushtemplates_release", "setDeepLinkList$clevertap_pushtemplates_release", "imageList", "getImageList$clevertap_pushtemplates_release", "setImageList$clevertap_pushtemplates_release", "notificationId", "", "getNotificationId$clevertap_pushtemplates_release", "()I", "setNotificationId$clevertap_pushtemplates_release", "(I)V", "pID", "priceList", "getPriceList$clevertap_pushtemplates_release", "setPriceList$clevertap_pushtemplates_release", "pt_bg", "getPt_bg$clevertap_pushtemplates_release", "()Ljava/lang/String;", "setPt_bg$clevertap_pushtemplates_release", "(Ljava/lang/String;)V", "pt_big_img", "getPt_big_img$clevertap_pushtemplates_release", "setPt_big_img$clevertap_pushtemplates_release", "pt_big_img_alt", "pt_cancel_notif_id", "pt_cancel_notif_ids", "pt_chrono_title_clr", "getPt_chrono_title_clr$clevertap_pushtemplates_release", "setPt_chrono_title_clr$clevertap_pushtemplates_release", "pt_collapse_key", "", "pt_dismiss_on_click", "getPt_dismiss_on_click$clevertap_pushtemplates_release", "setPt_dismiss_on_click$clevertap_pushtemplates_release", "pt_dot", "getPt_dot$clevertap_pushtemplates_release", "setPt_dot$clevertap_pushtemplates_release", "pt_dot_sep", "Landroid/graphics/Bitmap;", "getPt_dot_sep$clevertap_pushtemplates_release", "()Landroid/graphics/Bitmap;", "setPt_dot_sep$clevertap_pushtemplates_release", "(Landroid/graphics/Bitmap;)V", "pt_flip_interval", "getPt_flip_interval$clevertap_pushtemplates_release", "setPt_flip_interval$clevertap_pushtemplates_release", "pt_id", "pt_input_auto_open", "getPt_input_auto_open$clevertap_pushtemplates_release", "setPt_input_auto_open$clevertap_pushtemplates_release", "pt_input_feedback", "getPt_input_feedback", "setPt_input_feedback", "pt_input_label", "getPt_input_label$clevertap_pushtemplates_release", "setPt_input_label$clevertap_pushtemplates_release", "pt_large_icon", "getPt_large_icon$clevertap_pushtemplates_release", "setPt_large_icon$clevertap_pushtemplates_release", "pt_manual_carousel_type", "getPt_manual_carousel_type$clevertap_pushtemplates_release", "setPt_manual_carousel_type$clevertap_pushtemplates_release", "pt_meta_clr", "getPt_meta_clr$clevertap_pushtemplates_release", "setPt_meta_clr$clevertap_pushtemplates_release", "pt_msg", "getPt_msg$clevertap_pushtemplates_release", "setPt_msg$clevertap_pushtemplates_release", "pt_msg_alt", "pt_msg_clr", "getPt_msg_clr$clevertap_pushtemplates_release", "setPt_msg_clr$clevertap_pushtemplates_release", "pt_msg_summary", "getPt_msg_summary$clevertap_pushtemplates_release", "setPt_msg_summary$clevertap_pushtemplates_release", "pt_product_display_action", "getPt_product_display_action$clevertap_pushtemplates_release", "setPt_product_display_action$clevertap_pushtemplates_release", "pt_product_display_action_clr", "getPt_product_display_action_clr$clevertap_pushtemplates_release", "setPt_product_display_action_clr$clevertap_pushtemplates_release", "pt_product_display_action_text_clr", "getPt_product_display_action_text_clr$clevertap_pushtemplates_release", "setPt_product_display_action_text_clr$clevertap_pushtemplates_release", "pt_product_display_linear", "getPt_product_display_linear$clevertap_pushtemplates_release", "setPt_product_display_linear$clevertap_pushtemplates_release", "pt_rating_default_dl", "getPt_rating_default_dl$clevertap_pushtemplates_release", "setPt_rating_default_dl$clevertap_pushtemplates_release", "pt_small_icon", "getPt_small_icon$clevertap_pushtemplates_release", "setPt_small_icon$clevertap_pushtemplates_release", "pt_small_icon_clr", "getPt_small_icon_clr$clevertap_pushtemplates_release", "setPt_small_icon_clr$clevertap_pushtemplates_release", "pt_small_view", "getPt_small_view$clevertap_pushtemplates_release", "setPt_small_view$clevertap_pushtemplates_release", "pt_subtitle", "getPt_subtitle$clevertap_pushtemplates_release", "setPt_subtitle$clevertap_pushtemplates_release", "pt_timer_end", "getPt_timer_end", "setPt_timer_end", "pt_timer_threshold", "getPt_timer_threshold", "setPt_timer_threshold", "pt_title", "getPt_title$clevertap_pushtemplates_release", "setPt_title$clevertap_pushtemplates_release", "pt_title_alt", "pt_title_clr", "getPt_title_clr$clevertap_pushtemplates_release", "setPt_title_clr$clevertap_pushtemplates_release", "smallIcon", "getSmallIcon$clevertap_pushtemplates_release", "setSmallIcon$clevertap_pushtemplates_release", "smallTextList", "getSmallTextList$clevertap_pushtemplates_release", "setSmallTextList$clevertap_pushtemplates_release", "templateType", "Lcom/clevertap/android/pushtemplates/TemplateType;", "getActionButtonIconKey", "getCollapseKey", "getMessage", "getTimerEnd", "()Ljava/lang/Integer;", "getTitle", "renderCancelNotification", "", "renderNotification", "Landroidx/core/app/NotificationCompat$Builder;", "nb", "setKeysFromDashboard", "setSmallIcon", "setUp", "timerRunner", "delay", "(Landroid/content/Context;Landroid/os/Bundle;ILjava/lang/Integer;)V", "Companion", "LogLevel", "clevertap-pushtemplates_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.h.a.b.d */
/* loaded from: classes-dex2jar.jar:e/h/a/b/d.class */
public final class C22675d implements AbstractC22863e {

    /* renamed from: U */
    public static final C22676a f62741U = new C22676a(null);

    /* renamed from: A */
    public String f62742A;

    /* renamed from: B */
    public int f62743B;

    /* renamed from: C */
    public String f62744C;

    /* renamed from: D */
    public String f62745D;

    /* renamed from: E */
    public String f62746E;

    /* renamed from: F */
    public String f62747F;

    /* renamed from: G */
    public String f62748G;

    /* renamed from: H */
    public String f62749H;

    /* renamed from: I */
    public String f62750I;

    /* renamed from: J */
    public Bitmap f62751J;

    /* renamed from: K */
    public Bitmap f62752K;

    /* renamed from: L */
    public String f62753L;

    /* renamed from: M */
    public ArrayList<Integer> f62754M;

    /* renamed from: N */
    public JSONArray f62755N;

    /* renamed from: O */
    public String f62756O;

    /* renamed from: P */
    public int f62757P;

    /* renamed from: Q */
    public Object f62758Q;

    /* renamed from: R */
    public String f62759R;

    /* renamed from: S */
    public CleverTapInstanceConfig f62760S;

    /* renamed from: T */
    public int f62761T = -1;

    /* renamed from: a */
    public String f62762a;

    /* renamed from: b */
    public EnumC22678e f62763b;

    /* renamed from: c */
    public String f62764c;

    /* renamed from: d */
    public String f62765d;

    /* renamed from: e */
    public String f62766e;

    /* renamed from: f */
    public String f62767f;

    /* renamed from: g */
    public String f62768g;

    /* renamed from: h */
    public String f62769h;

    /* renamed from: i */
    public String f62770i;

    /* renamed from: j */
    public String f62771j;

    /* renamed from: k */
    public ArrayList<String> f62772k;

    /* renamed from: l */
    public ArrayList<String> f62773l;

    /* renamed from: m */
    public ArrayList<String> f62774m;

    /* renamed from: n */
    public ArrayList<String> f62775n;

    /* renamed from: o */
    public ArrayList<String> f62776o;

    /* renamed from: p */
    public String f62777p;

    /* renamed from: q */
    public String f62778q;

    /* renamed from: r */
    public String f62779r;

    /* renamed from: s */
    public String f62780s;

    /* renamed from: t */
    public String f62781t;

    /* renamed from: u */
    public int f62782u;

    /* renamed from: v */
    public int f62783v;

    /* renamed from: w */
    public int f62784w;

    /* renamed from: x */
    public String f62785x;

    /* renamed from: y */
    public String f62786y;

    /* renamed from: z */
    public String f62787z;

    @Metadata(d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n��\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/clevertap/android/pushtemplates/TemplateRenderer$Companion;", "", "()V", "debugLevel", "", "getDebugLevel$annotations", "getDebugLevel", "()I", "setDebugLevel", "(I)V", "clevertap-pushtemplates_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: e.h.a.b.d$a */
    /* loaded from: classes-dex2jar.jar:e/h/a/b/d$a.class */
    public static final class C22676a {
        public C22676a(f fVar) {
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* renamed from: e.h.a.b.d$b */
    /* loaded from: classes-dex2jar.jar:e/h/a/b/d$b.class */
    public final /* synthetic */ class C22677b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f62788a = {1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 10};

        static {
            EnumC22678e.values();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:106:0x0444, code lost:
        if ((r0.length() == 0) != false) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0471, code lost:
        if ((r0.length() == 0) != false) goto L116;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x049e, code lost:
        if ((r0.length() == 0) != false) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x04c9, code lost:
        if ((r0.length() == 0) != false) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0363, code lost:
        if ((r0.length() == 0) != false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0390, code lost:
        if ((r0.length() == 0) != false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x03bd, code lost:
        if ((r0.length() == 0) != false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x03ea, code lost:
        if ((r0.length() == 0) != false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0417, code lost:
        if ((r0.length() == 0) != false) goto L98;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x007e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C22675d(android.content.Context r9, android.os.Bundle r10) {
        /*
            Method dump skipped, instructions count: 1266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1485h.p1486a.p1488b.C22675d.<init>(android.content.Context, android.os.Bundle):void");
    }

    @Override // p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22863e
    /* renamed from: a */
    public /* synthetic */ C26450q mo7667a(Context context, Bundle bundle, int i, C26450q c26450q, JSONArray jSONArray) {
        return C22862d.m7668a(this, context, bundle, i, c26450q, jSONArray);
    }

    @Override // p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22863e
    /* renamed from: b */
    public String mo7666b(Bundle bundle, Context context) {
        l.e(bundle, "extras");
        l.e(context, AnalyticsConstants.CONTEXT);
        return this.f62764c;
    }

    @Override // p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22863e
    /* renamed from: c */
    public String mo7665c() {
        return "pt_ico";
    }

    @Override // p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22863e
    /* renamed from: d */
    public Object mo7664d(Bundle bundle) {
        l.e(bundle, "extras");
        return this.f62758Q;
    }

    @Override // p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22863e
    /* renamed from: e */
    public C26450q mo7663e(final Bundle bundle, final Context context, C26450q c26450q, CleverTapInstanceConfig cleverTapInstanceConfig, final int i) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        EnumC22678e enumC22678e = EnumC22678e.BASIC;
        l.e(bundle, "extras");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(c26450q, "nb");
        l.e(cleverTapInstanceConfig, DTBMetricsConfiguration.CONFIG_DIR);
        Integer num = null;
        if (this.f62762a == null) {
            return null;
        }
        this.f62761T = i;
        EnumC22678e enumC22678e2 = this.f62763b;
        switch (enumC22678e2 == null ? -1 : C22677b.f62788a[enumC22678e2.ordinal()]) {
            case 1:
                AbstractC22707k m7931a = C22708l.m7931a(enumC22678e, this);
                if (m7931a == null) {
                    z = false;
                } else {
                    z = false;
                    if (m7931a.m7933b()) {
                        z = true;
                    }
                }
                if (!z) {
                    return null;
                }
                return new C22695b(this).mo7941a(context, bundle, i, c26450q);
            case 2:
                AbstractC22707k m7931a2 = C22708l.m7931a(EnumC22678e.AUTO_CAROUSEL, this);
                if (m7931a2 == null) {
                    z2 = false;
                } else {
                    z2 = false;
                    if (m7931a2.m7933b()) {
                        z2 = true;
                    }
                }
                if (!z2) {
                    return null;
                }
                return new C22694a(this).mo7941a(context, bundle, i, c26450q);
            case 3:
                AbstractC22707k m7931a3 = C22708l.m7931a(EnumC22678e.MANUAL_CAROUSEL, this);
                if (m7931a3 == null) {
                    z3 = false;
                } else {
                    z3 = false;
                    if (m7931a3.m7933b()) {
                        z3 = true;
                    }
                }
                if (!z3) {
                    return null;
                }
                return new C22698e(this, bundle).mo7941a(context, bundle, i, c26450q);
            case 4:
                AbstractC22707k m7931a4 = C22708l.m7931a(EnumC22678e.RATING, this);
                if (m7931a4 == null) {
                    z4 = false;
                } else {
                    z4 = false;
                    if (m7931a4.m7933b()) {
                        z4 = true;
                    }
                }
                if (!z4) {
                    return null;
                }
                return new C22700g(this, bundle).mo7941a(context, bundle, i, c26450q);
            case 5:
                AbstractC22707k m7931a5 = C22708l.m7931a(EnumC22678e.FIVE_ICONS, this);
                if (m7931a5 == null) {
                    z5 = false;
                } else {
                    z5 = false;
                    if (m7931a5.m7933b()) {
                        z5 = true;
                    }
                }
                if (!z5) {
                    return null;
                }
                C26450q mo7941a = new C22696c(this, bundle).mo7941a(context, bundle, i, c26450q);
                mo7941a.m1853p(2, true);
                return mo7941a;
            case 6:
                AbstractC22707k m7931a6 = C22708l.m7931a(EnumC22678e.PRODUCT_DISPLAY, this);
                if (m7931a6 == null) {
                    z6 = false;
                } else {
                    z6 = false;
                    if (m7931a6.m7933b()) {
                        z6 = true;
                    }
                }
                if (!z6) {
                    return null;
                }
                return new C22699f(this, bundle).mo7941a(context, bundle, i, c26450q);
            case 7:
                AbstractC22707k m7931a7 = C22708l.m7931a(EnumC22678e.ZERO_BEZEL, this);
                if (m7931a7 == null) {
                    z7 = false;
                } else {
                    z7 = false;
                    if (m7931a7.m7933b()) {
                        z7 = true;
                    }
                }
                if (!z7) {
                    return null;
                }
                return new C22703j(this).mo7941a(context, bundle, i, c26450q);
            case 8:
                if (Build.VERSION.SDK_INT < 24) {
                    AbstractC22707k m7931a8 = C22708l.m7931a(enumC22678e, this);
                    if (m7931a8 == null) {
                        z8 = false;
                    } else {
                        z8 = false;
                        if (m7931a8.m7933b()) {
                            z8 = true;
                        }
                    }
                    if (!z8) {
                        return null;
                    }
                    return new C22695b(this).mo7941a(context, bundle, i, c26450q);
                }
                AbstractC22707k m7931a9 = C22708l.m7931a(EnumC22678e.TIMER, this);
                if (!(m7931a9 != null && m7931a9.m7933b())) {
                    return null;
                }
                int i2 = this.f62784w;
                if (i2 == -1 || i2 < 10) {
                    int i3 = this.f62743B;
                    if (i3 >= 10) {
                        num = Integer.valueOf((i3 * 1000) + 1000);
                    }
                } else {
                    num = Integer.valueOf((i2 * 1000) + 1000);
                }
                Handler handler = new Handler(Looper.getMainLooper());
                bundle.remove("wzrk_rnv");
                String str = this.f62744C;
                if (str != null) {
                    l.c(str);
                    if (str.length() > 0) {
                        this.f62764c = this.f62744C;
                    }
                }
                String str2 = this.f62746E;
                if (str2 != null) {
                    l.c(str2);
                    if (str2.length() > 0) {
                        this.f62768g = this.f62746E;
                    }
                }
                String str3 = this.f62745D;
                if (str3 != null) {
                    l.c(str3);
                    boolean z10 = false;
                    if (str3.length() > 0) {
                        z10 = true;
                    }
                    if (z10) {
                        this.f62765d = this.f62745D;
                    }
                }
                Runnable runnable = new Runnable() { // from class: e.h.a.b.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        boolean z11;
                        boolean z12;
                        Context context2 = context;
                        int i4 = i;
                        C22675d c22675d = this;
                        Bundle bundle2 = bundle;
                        l.e(context2, "$context");
                        l.e(c22675d, "this$0");
                        l.e(bundle2, "$extras");
                        StatusBarNotification[] activeNotifications = ((NotificationManager) context2.getSystemService(RemoteMessageConst.NOTIFICATION)).getActiveNotifications();
                        int length = activeNotifications.length;
                        int i5 = 0;
                        while (true) {
                            if (i5 >= length) {
                                z11 = false;
                                break;
                            } else if (activeNotifications[i5].getId() == i4) {
                                z11 = true;
                                break;
                            } else {
                                i5++;
                            }
                        }
                        if (z11) {
                            AbstractC22707k m7931a10 = C22708l.m7931a(EnumC22678e.BASIC, c22675d);
                            if (m7931a10 == null) {
                                z12 = false;
                            } else {
                                z12 = false;
                                if (m7931a10.m7933b()) {
                                    z12 = true;
                                }
                            }
                            if (!z12) {
                                return;
                            }
                            Context applicationContext = context2.getApplicationContext();
                            Bundle bundle3 = (Bundle) bundle2.clone();
                            bundle3.putString("wzrk_pid", null);
                            bundle3.putString("pt_id", "pt_basic");
                            bundle3.putString("pt_ck", null);
                            bundle3.putString("wzrk_ck", null);
                            bundle3.remove("notificationId");
                            l.d(applicationContext, "applicationContext");
                            C22675d c22675d2 = new C22675d(applicationContext, bundle3);
                            C22773p m7796e = C22773p.m7796e(applicationContext, C26232y.m2408U(bundle3));
                            if (m7796e == null) {
                                return;
                            }
                            m7796e.m7783r(c22675d2, applicationContext, bundle3);
                        }
                    }
                };
                l.c(num);
                handler.postDelayed(runnable, num.intValue() - 100);
                C26450q mo7941a2 = new C22702i(this, bundle).mo7941a(context, bundle, i, c26450q);
                l.c(num);
                mo7941a2.f74133N = num.intValue();
                return mo7941a2;
            case 9:
                AbstractC22707k m7931a10 = C22708l.m7931a(EnumC22678e.INPUT_BOX, this);
                if (m7931a10 == null) {
                    z9 = false;
                } else {
                    z9 = false;
                    if (m7931a10.m7933b()) {
                        z9 = true;
                    }
                }
                if (!z9) {
                    return null;
                }
                return new C22697d(this).mo7941a(context, bundle, i, c26450q);
            case 10:
                Object systemService = context.getSystemService(RemoteMessageConst.NOTIFICATION);
                Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
                NotificationManager notificationManager = (NotificationManager) systemService;
                String str4 = this.f62753L;
                if (str4 != null) {
                    l.c(str4);
                    if (str4.length() > 0) {
                        String str5 = this.f62753L;
                        l.c(str5);
                        notificationManager.cancel(Integer.parseInt(str5));
                        return null;
                    }
                }
                ArrayList<Integer> arrayList = this.f62754M;
                l.c(arrayList);
                if (arrayList.size() <= 0) {
                    return null;
                }
                ArrayList<Integer> arrayList2 = this.f62754M;
                l.c(arrayList2);
                int size = arrayList2.size();
                if (size < 0) {
                    return null;
                }
                int i4 = 0;
                while (true) {
                    ArrayList<Integer> arrayList3 = this.f62754M;
                    l.c(arrayList3);
                    Integer num2 = arrayList3.get(i4);
                    l.d(num2, "pt_cancel_notif_ids!![i]");
                    notificationManager.cancel(num2.intValue());
                    if (i4 == size) {
                        return null;
                    }
                    i4++;
                }
            default:
                return null;
        }
    }

    @Override // p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22863e
    /* renamed from: f */
    public void mo7662f(int i, Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f62782u = i;
        try {
            this.f62751J = C22681g.m7959u(context, i, this.f62750I);
        } catch (NullPointerException e) {
        }
    }

    @Override // p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22863e
    /* renamed from: g */
    public String mo7661g(Bundle bundle) {
        l.e(bundle, "extras");
        return this.f62765d;
    }
}
