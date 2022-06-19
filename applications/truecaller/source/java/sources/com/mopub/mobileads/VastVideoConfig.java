package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.mopub.common.Constants;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.ViewabilityVendor;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.VastTracker;
import com.mopub.network.TrackingRequest;
import com.razorpay.AnalyticsConstants;
import e.m.d.y.n;
import e.m.e.d0.b;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import org.json.JSONArray;
import org.json.JSONObject;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.f0.r;
import s1.u.s;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��¤\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u001c\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010#\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\bQ\b\u0017\u0018�� Ë\u00012\u00020\u0001:\u0005Ë\u0001Ì\u0001\u000eB\t¢\u0006\u0006\bÉ\u0001\u0010Ê\u0001J)\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004H\u0012¢\u0006\u0004\b\b\u0010\tJ#\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\n2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0012¢\u0006\u0004\b\u000e\u0010\u000fJ\u001d\u0010\u0011\u001a\u00020\u00072\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\nH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u001d\u0010\u0014\u001a\u00020\u00072\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\r0\nH\u0016¢\u0006\u0004\b\u0014\u0010\u0012J\u001d\u0010\u0017\u001a\u00020\u00072\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\nH\u0016¢\u0006\u0004\b\u0017\u0010\u0012J\u001d\u0010\u001a\u001a\u00020\u00072\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\nH\u0016¢\u0006\u0004\b\u001a\u0010\u0012J\u001d\u0010\u001c\u001a\u00020\u00072\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\r0\nH\u0016¢\u0006\u0004\b\u001c\u0010\u0012J\u001d\u0010\u001e\u001a\u00020\u00072\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\r0\nH\u0016¢\u0006\u0004\b\u001e\u0010\u0012J\u001d\u0010 \u001a\u00020\u00072\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\r0\nH\u0016¢\u0006\u0004\b \u0010\u0012J\u001d\u0010\"\u001a\u00020\u00072\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\r0\nH\u0016¢\u0006\u0004\b\"\u0010\u0012J\u001d\u0010$\u001a\u00020\u00072\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\r0\nH\u0016¢\u0006\u0004\b$\u0010\u0012J\u001d\u0010&\u001a\u00020\u00072\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\r0\nH\u0016¢\u0006\u0004\b&\u0010\u0012J\u001f\u0010*\u001a\u00020\u00072\u000e\u0010)\u001a\n\u0012\u0004\u0012\u00020(\u0018\u00010'H\u0016¢\u0006\u0004\b*\u0010+J\u0019\u0010.\u001a\u00020\u00072\b\u0010-\u001a\u0004\u0018\u00010,H\u0016¢\u0006\u0004\b.\u0010/J\u000f\u00101\u001a\u000200H\u0016¢\u0006\u0004\b1\u00102J\u001f\u00103\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b3\u00104J'\u00107\u001a\u00020\u00072\u0006\u00106\u001a\u0002052\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016¢\u0006\u0004\b7\u00108J\u001f\u00109\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b9\u00104J\u001f\u0010:\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b:\u00104J\u001f\u0010;\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b;\u00104J\u001f\u0010<\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b<\u00104J\u001f\u0010=\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b=\u00104J\u001f\u0010>\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b>\u00104J)\u0010A\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010@\u001a\u0004\u0018\u00010?2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\bA\u0010BJ%\u0010E\u001a\b\u0012\u0004\u0012\u00020\r0\n2\u0006\u0010C\u001a\u00020\u00042\u0006\u0010D\u001a\u00020\u0004H\u0016¢\u0006\u0004\bE\u0010FJ\u0019\u0010H\u001a\u0004\u0018\u00010\u00042\u0006\u0010G\u001a\u00020\u0004H\u0016¢\u0006\u0004\bH\u0010IJ\u000f\u0010J\u001a\u00020\u000bH\u0016¢\u0006\u0004\bJ\u0010KJ\u0017\u0010N\u001a\u00020\u00072\u0006\u0010M\u001a\u00020LH\u0016¢\u0006\u0004\bN\u0010OJ\u001d\u0010R\u001a\u00020\u00072\f\u0010Q\u001a\b\u0012\u0004\u0012\u00020L0PH\u0016¢\u0006\u0004\bR\u0010SR\u001c\u0010W\u001a\b\u0012\u0004\u0012\u00020\r0T8\u0012@\u0013X\u0093\u0004¢\u0006\u0006\n\u0004\bU\u0010VR\u001c\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\r0X8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bY\u0010ZR\u001c\u0010\\\u001a\b\u0012\u0004\u0012\u00020\r0T8\u0012@\u0013X\u0093\u0004¢\u0006\u0006\n\u0004\b[\u0010VR$\u0010d\u001a\u0004\u0018\u00010]8\u0016@\u0016X\u0097\u000e¢\u0006\u0012\n\u0004\b^\u0010_\u001a\u0004\b`\u0010a\"\u0004\bb\u0010cR\u001c\u0010#\u001a\b\u0012\u0004\u0012\u00020\r0X8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\be\u0010ZR$\u0010k\u001a\u0004\u0018\u00010\u000b8\u0016@\u0016X\u0097\u000e¢\u0006\u0012\n\u0004\bf\u0010g\u001a\u0004\bh\u0010K\"\u0004\bi\u0010jR\u001c\u0010o\u001a\b\u0012\u0004\u0012\u00020(0l8\u0012@\u0013X\u0093\u0004¢\u0006\u0006\n\u0004\bm\u0010nR$\u0010s\u001a\u0004\u0018\u00010\u000b8\u0016@\u0016X\u0097\u000e¢\u0006\u0012\n\u0004\bp\u0010g\u001a\u0004\bq\u0010K\"\u0004\br\u0010jR\u001c\u0010u\u001a\b\u0012\u0004\u0012\u00020\r0T8\u0012@\u0013X\u0093\u0004¢\u0006\u0006\n\u0004\bt\u0010VR$\u0010y\u001a\u0004\u0018\u00010\u000b8\u0016@\u0016X\u0097\u000e¢\u0006\u0012\n\u0004\bv\u0010g\u001a\u0004\bw\u0010K\"\u0004\bx\u0010jR\u001c\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\r0X8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bz\u0010ZR\u001c\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180X8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b{\u0010ZR3\u0010\u0084\u0001\u001a\u0004\u0018\u00010|2\b\u0010}\u001a\u0004\u0018\u00010|8\u0016@VX\u0097\u000e¢\u0006\u0016\n\u0004\b~\u0010\u007f\u001a\u0006\b\u0080\u0001\u0010\u0081\u0001\"\u0006\b\u0082\u0001\u0010\u0083\u0001R\u001e\u0010\u0086\u0001\u001a\b\u0012\u0004\u0012\u00020\r0T8\u0012@\u0013X\u0093\u0004¢\u0006\u0007\n\u0005\b\u0085\u0001\u0010VR2\u0010\u008a\u0001\u001a\u0004\u0018\u00010\u000b2\b\u0010}\u001a\u0004\u0018\u00010\u000b8\u0016@VX\u0097\u000e¢\u0006\u0015\n\u0005\b\u0087\u0001\u0010g\u001a\u0005\b\u0088\u0001\u0010K\"\u0005\b\u0089\u0001\u0010jR%\u0010Q\u001a\b\u0012\u0004\u0012\u00020L0l8\u0016@\u0017X\u0097\u0004¢\u0006\u000f\n\u0005\b\u008b\u0001\u0010n\u001a\u0006\b\u008c\u0001\u0010\u008d\u0001R)\u0010\u0094\u0001\u001a\u00020\u00048\u0016@\u0016X\u0097\u000e¢\u0006\u0018\n\u0006\b\u008e\u0001\u0010\u008f\u0001\u001a\u0006\b\u0090\u0001\u0010\u0091\u0001\"\u0006\b\u0092\u0001\u0010\u0093\u0001R\u001d\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\r0X8V@\u0016X\u0096\u0004¢\u0006\u0007\u001a\u0005\b\u0095\u0001\u0010ZR2\u0010\u0099\u0001\u001a\u0004\u0018\u00010\u000b2\b\u0010}\u001a\u0004\u0018\u00010\u000b8\u0016@VX\u0097\u000e¢\u0006\u0015\n\u0005\b\u0096\u0001\u0010g\u001a\u0005\b\u0097\u0001\u0010K\"\u0005\b\u0098\u0001\u0010jR2\u0010\u009d\u0001\u001a\u0004\u0018\u00010\u000b2\b\u0010}\u001a\u0004\u0018\u00010\u000b8\u0016@VX\u0097\u000e¢\u0006\u0015\n\u0005\b\u009a\u0001\u0010g\u001a\u0005\b\u009b\u0001\u0010K\"\u0005\b\u009c\u0001\u0010jR\u001e\u0010\u009f\u0001\u001a\b\u0012\u0004\u0012\u00020\r0T8\u0012@\u0013X\u0093\u0004¢\u0006\u0007\n\u0005\b\u009e\u0001\u0010VR\u001d\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150X8V@\u0016X\u0096\u0004¢\u0006\u0007\u001a\u0005\b \u0001\u0010ZR\u001d\u0010¡\u0001\u001a\b\u0012\u0004\u0012\u00020\r0T8\u0012@\u0013X\u0093\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010VR\u001d\u0010¢\u0001\u001a\b\u0012\u0004\u0012\u00020\r0T8\u0012@\u0013X\u0093\u0004¢\u0006\u0006\n\u0004\b\b\u0010VR\u001d\u0010!\u001a\b\u0012\u0004\u0012\u00020\r0X8V@\u0016X\u0096\u0004¢\u0006\u0007\u001a\u0005\b£\u0001\u0010ZR\u001e\u0010¥\u0001\u001a\b\u0012\u0004\u0012\u00020\u00150T8\u0012@\u0013X\u0093\u0004¢\u0006\u0007\n\u0005\b¤\u0001\u0010VR\u001e\u0010)\u001a\b\u0012\u0004\u0012\u00020(0'8V@\u0016X\u0096\u0004¢\u0006\b\u001a\u0006\b¦\u0001\u0010\u008d\u0001R2\u0010ª\u0001\u001a\u0004\u0018\u00010\u000b2\b\u0010}\u001a\u0004\u0018\u00010\u000b8\u0016@VX\u0097\u000e¢\u0006\u0015\n\u0005\b§\u0001\u0010g\u001a\u0005\b¨\u0001\u0010K\"\u0005\b©\u0001\u0010jR\u001d\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0X8V@\u0016X\u0096\u0004¢\u0006\u0007\u001a\u0005\b«\u0001\u0010ZR\u001d\u0010%\u001a\b\u0012\u0004\u0012\u00020\r0X8V@\u0016X\u0096\u0004¢\u0006\u0007\u001a\u0005\b¬\u0001\u0010ZR(\u0010°\u0001\u001a\u0004\u0018\u00010\u000b8\u0016@\u0016X\u0097\u000e¢\u0006\u0015\n\u0005\b\u00ad\u0001\u0010g\u001a\u0005\b®\u0001\u0010K\"\u0005\b¯\u0001\u0010jR\u001d\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\r0X8V@\u0016X\u0096\u0004¢\u0006\u0007\u001a\u0005\b±\u0001\u0010ZR\u0019\u0010³\u0001\u001a\u00020\u00048V@\u0016X\u0096\u0004¢\u0006\b\u001a\u0006\b²\u0001\u0010\u0091\u0001R(\u0010·\u0001\u001a\u0004\u0018\u00010\u000b8\u0016@\u0016X\u0097\u000e¢\u0006\u0015\n\u0005\b´\u0001\u0010g\u001a\u0005\bµ\u0001\u0010K\"\u0005\b¶\u0001\u0010jR(\u0010½\u0001\u001a\u0002008\u0016@\u0016X\u0097\u000e¢\u0006\u0017\n\u0006\b¸\u0001\u0010¹\u0001\u001a\u0005\bº\u0001\u00102\"\u0006\b»\u0001\u0010¼\u0001R\u001e\u0010¿\u0001\u001a\b\u0012\u0004\u0012\u00020\r0T8\u0012@\u0013X\u0093\u0004¢\u0006\u0007\n\u0005\b¾\u0001\u0010VR\u001e\u0010Á\u0001\u001a\b\u0012\u0004\u0012\u00020\u00180T8\u0012@\u0013X\u0093\u0004¢\u0006\u0007\n\u0005\bÀ\u0001\u0010VR(\u0010Ã\u0001\u001a\u0002008\u0016@\u0016X\u0097\u000e¢\u0006\u0017\n\u0006\bÂ\u0001\u0010¹\u0001\u001a\u0005\bÃ\u0001\u00102\"\u0006\bÄ\u0001\u0010¼\u0001R2\u0010È\u0001\u001a\u0004\u0018\u00010\u000b2\b\u0010}\u001a\u0004\u0018\u00010\u000b8\u0016@VX\u0097\u000e¢\u0006\u0015\n\u0005\bÅ\u0001\u0010g\u001a\u0005\bÆ\u0001\u0010K\"\u0005\bÇ\u0001\u0010j¨\u0006Í\u0001"}, d2 = {"Lcom/mopub/mobileads/VastVideoConfig;", "Ljava/io/Serializable;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "", "contentPlayHead", "requestCode", "Ls1/s;", C22021b.f61237c, "(Landroid/content/Context;ILjava/lang/Integer;)V", "", "", Constants.VIDEO_TRACKING_URLS_KEY, "Lcom/mopub/mobileads/VastTracker;", "a", "(Ljava/util/List;)Ljava/util/List;", "impressionTrackers", "addImpressionTrackers", "(Ljava/util/List;)V", "resumeTrackers", "addResumeTrackers", "Lcom/mopub/mobileads/VastFractionalProgressTracker;", "fractionalTrackers", "addFractionalTrackers", "Lcom/mopub/mobileads/VastAbsoluteProgressTracker;", "absoluteTrackers", "addAbsoluteTrackers", "completeTrackers", "addCompleteTrackers", "pauseTrackers", "addPauseTrackers", "closeTrackers", "addCloseTrackers", "skipTrackers", "addSkipTrackers", "clickTrackers", "addClickTrackers", "errorTrackers", "addErrorTrackers", "", "Lcom/mopub/common/ViewabilityVendor;", "viewabilityVendors", "addViewabilityVendors", "(Ljava/util/Set;)V", "Lorg/json/JSONObject;", "videoTrackers", "addVideoTrackers", "(Lorg/json/JSONObject;)V", "", "hasCompanionAd", "()Z", "handleImpression", "(Landroid/content/Context;I)V", "Landroid/app/Activity;", "activity", "handleClickForResult", "(Landroid/app/Activity;II)V", "handleClickWithoutResult", "handleResume", "handlePause", "handleClose", "handleSkip", "handleComplete", "Lcom/mopub/mobileads/VastErrorCode;", "errorCode", "handleError", "(Landroid/content/Context;Lcom/mopub/mobileads/VastErrorCode;I)V", "currentPositionMillis", "videoLengthMillis", "getUntriggeredTrackersBefore", "(II)Ljava/util/List;", "videoDuration", "getSkipOffsetMillis", "(I)Ljava/lang/Integer;", "toJsonString", "()Ljava/lang/String;", "Lcom/mopub/mobileads/VastCompanionAdConfig;", "vastCompanionAdConfig", "addVastCompanionAdConfig", "(Lcom/mopub/mobileads/VastCompanionAdConfig;)V", "", "vastCompanionAdConfigs", "addVastCompanionAdConfigs", "(Ljava/lang/Iterable;)V", "", "e", "Ljava/util/List;", "_closeTrackers", "Ljava/util/ArrayList;", "getResumeTrackers", "()Ljava/util/ArrayList;", "f", "_skipTrackers", "Lcom/mopub/mobileads/VastIconConfig;", "q", "Lcom/mopub/mobileads/VastIconConfig;", "getVastIconConfig", "()Lcom/mopub/mobileads/VastIconConfig;", "setVastIconConfig", "(Lcom/mopub/mobileads/VastIconConfig;)V", "vastIconConfig", "getClickTrackers", "m", "Ljava/lang/String;", "getNetworkMediaFileUrl", "setNetworkMediaFileUrl", "(Ljava/lang/String;)V", "networkMediaFileUrl", "", "k", "Ljava/util/Set;", "_viewabilityVendors", "o", "getSkipOffset", "setSkipOffset", "skipOffset", AbstractC2405c.f7629a, "_resumeTrackers", "n", "getDiskMediaFileUrl", "setDiskMediaFileUrl", "diskMediaFileUrl", "getCompleteTrackers", "getAbsoluteTrackers", "Lcom/mopub/mobileads/VideoViewabilityTracker;", "value", "x", "Lcom/mopub/mobileads/VideoViewabilityTracker;", "getVideoViewabilityTracker", "()Lcom/mopub/mobileads/VideoViewabilityTracker;", "setVideoViewabilityTracker", "(Lcom/mopub/mobileads/VideoViewabilityTracker;)V", "videoViewabilityTracker", "h", "_errorTrackers", "y", "getDspCreativeId", "setDspCreativeId", "dspCreativeId", "p", "getVastCompanionAdConfigs", "()Ljava/util/Set;", "s", "I", "getCountdownTimerDuration", "()I", "setCountdownTimerDuration", "(I)V", "countdownTimerDuration", "getCloseTrackers", "u", "getCustomCtaText", "setCustomCtaText", "customCtaText", "w", "getCustomCloseIconUrl", "setCustomCloseIconUrl", "customCloseIconUrl", "d", "_completeTrackers", "getFractionalTrackers", "_impressionTrackers", "_pauseTrackers", "getSkipTrackers", "i", "_fractionalTrackers", "getViewabilityVendors", "v", "getCustomSkipText", "setCustomSkipText", "customSkipText", "getImpressionTrackers", "getErrorTrackers", "l", "getClickThroughUrl", "setClickThroughUrl", "clickThroughUrl", "getPauseTrackers", "getRemainingProgressTrackerCount", "remainingProgressTrackerCount", "A", "getPrivacyInformationIconClickthroughUrl", "setPrivacyInformationIconClickthroughUrl", "privacyInformationIconClickthroughUrl", "t", "Z", "getEnableClickExperiment", "setEnableClickExperiment", "(Z)V", "enableClickExperiment", "g", "_clickTrackers", "j", "_absoluteTrackers", "r", "isRewarded", "setRewarded", "z", "getPrivacyInformationIconImageUrl", "setPrivacyInformationIconImageUrl", "privacyInformationIconImageUrl", "<init>", "()V", "Companion", "VastVideoConfigTypeAdapter", "mopub-sdk-base_release"}, k = 1, mv = {1, 4, 0})
@Mockable
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastVideoConfig.class */
public class VastVideoConfig implements Serializable {
    public static final Companion Companion = new Companion(null);
    @b(Constants.VAST_PRIVACY_ICON_CLICK_URL)

    /* renamed from: A */
    private String f8908A;
    @b(Constants.VAST_URL_CLICKTHROUGH)

    /* renamed from: l */
    private String f8920l;
    @b(Constants.VAST_URL_NETWORK_MEDIA_FILE)

    /* renamed from: m */
    private String f8921m;
    @b(Constants.VAST_URL_DISK_MEDIA_FILE)

    /* renamed from: n */
    private String f8922n;
    @b(Constants.VAST_SKIP_OFFSET)

    /* renamed from: o */
    private String f8923o;
    @b(Constants.VAST_ICON_CONFIG)

    /* renamed from: q */
    private VastIconConfig f8925q;
    @b(Constants.VAST_IS_REWARDED)

    /* renamed from: r */
    private boolean f8926r;
    @b(Constants.VAST_COUNTDOWN_TIMER_DURATION)

    /* renamed from: s */
    private int f8927s;
    @b(Constants.VAST_ENABLE_CLICK_EXP)

    /* renamed from: t */
    private boolean f8928t;
    @b(Constants.VAST_CUSTOM_TEXT_CTA)

    /* renamed from: u */
    private String f8929u;
    @b(Constants.VAST_CUSTOM_TEXT_SKIP)

    /* renamed from: v */
    private String f8930v;
    @b(Constants.VAST_CUSTOM_CLOSE_ICON_URL)

    /* renamed from: w */
    private String f8931w;
    @b(Constants.VAST_VIDEO_VIEWABILITY_TRACKER)

    /* renamed from: x */
    private VideoViewabilityTracker f8932x;
    @b(Constants.VAST_DSP_CREATIVE_ID)

    /* renamed from: y */
    private String f8933y;
    @b(Constants.VAST_PRIVACY_ICON_IMAGE_URL)

    /* renamed from: z */
    private String f8934z;
    @b(Constants.VAST_TRACKERS_IMPRESSION)

    /* renamed from: a */
    private final List<VastTracker> f8909a = new ArrayList();
    @b(Constants.VAST_TRACKERS_PAUSE)

    /* renamed from: b */
    private final List<VastTracker> f8910b = new ArrayList();
    @b(Constants.VAST_TRACKERS_RESUME)

    /* renamed from: c */
    private final List<VastTracker> f8911c = new ArrayList();
    @b(Constants.VAST_TRACKERS_COMPLETE)

    /* renamed from: d */
    private final List<VastTracker> f8912d = new ArrayList();
    @b(Constants.VAST_TRACKERS_CLOSE)

    /* renamed from: e */
    private final List<VastTracker> f8913e = new ArrayList();
    @b(Constants.VAST_TRACKERS_SKIP)

    /* renamed from: f */
    private final List<VastTracker> f8914f = new ArrayList();
    @b(Constants.VAST_TRACKERS_CLICK)

    /* renamed from: g */
    private final List<VastTracker> f8915g = new ArrayList();
    @b(Constants.VAST_TRACKERS_ERROR)

    /* renamed from: h */
    private final List<VastTracker> f8916h = new ArrayList();
    @b(Constants.VAST_TRACKERS_FRACTIONAL)

    /* renamed from: i */
    private final List<VastFractionalProgressTracker> f8917i = new ArrayList();
    @b(Constants.VAST_TRACKERS_ABSOLUTE)

    /* renamed from: j */
    private final List<VastAbsoluteProgressTracker> f8918j = new ArrayList();
    @b(Constants.VIEWABILITY_VERIFICATION_RESOURCES)

    /* renamed from: k */
    private final Set<ViewabilityVendor> f8919k = new LinkedHashSet();
    @b(Constants.VAST_COMPANION_ADS)

    /* renamed from: p */
    private final Set<VastCompanionAdConfig> f8924p = new HashSet();

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\b\u0086\u0003\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\b\u001a\u00020\u00078\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lcom/mopub/mobileads/VastVideoConfig$Companion;", "", "", "input", "Lcom/mopub/mobileads/VastVideoConfig;", "fromVastVideoConfigString", "(Ljava/lang/String;)Lcom/mopub/mobileads/VastVideoConfig;", "", "serialVersionUID", "J", "<init>", "()V", "mopub-sdk-base_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastVideoConfig$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(f fVar) {
            this();
        }

        public final VastVideoConfig fromVastVideoConfigString(String str) throws IOException, ClassNotFoundException {
            l.f(str, "input");
            e.m.e.l lVar = new e.m.e.l();
            lVar.e.add(new a());
            Object cast = n.B1(VastVideoConfig.class).cast(lVar.a().g(str, VastVideoConfig.class));
            l.b(cast, "gson.fromJson(input, VastVideoConfig::class.java)");
            return (VastVideoConfig) cast;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastVideoConfig$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            VideoTrackingEvent.values();
            $EnumSwitchMapping$0 = r0;
            VideoTrackingEvent videoTrackingEvent = VideoTrackingEvent.START;
            VideoTrackingEvent videoTrackingEvent2 = VideoTrackingEvent.FIRST_QUARTILE;
            VideoTrackingEvent videoTrackingEvent3 = VideoTrackingEvent.MIDPOINT;
            VideoTrackingEvent videoTrackingEvent4 = VideoTrackingEvent.THIRD_QUARTILE;
            VideoTrackingEvent videoTrackingEvent5 = VideoTrackingEvent.COMPLETE;
            VideoTrackingEvent videoTrackingEvent6 = VideoTrackingEvent.COMPANION_AD_VIEW;
            VideoTrackingEvent videoTrackingEvent7 = VideoTrackingEvent.COMPANION_AD_CLICK;
            int[] iArr = {1, 2, 3, 4, 5, 6, 7};
        }
    }

    /* renamed from: a */
    public final List<VastTracker> m36225a(List<String> list) {
        ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
        for (String str : list) {
            arrayList.add(new VastTracker.Builder(str).build());
        }
        return arrayList;
    }

    public void addAbsoluteTrackers(List<? extends VastAbsoluteProgressTracker> list) {
        l.f(list, "absoluteTrackers");
        this.f8918j.addAll(list);
        C25225a.m3957U2(this.f8918j);
    }

    public void addClickTrackers(List<? extends VastTracker> list) {
        l.f(list, "clickTrackers");
        this.f8915g.addAll(list);
    }

    public void addCloseTrackers(List<? extends VastTracker> list) {
        l.f(list, "closeTrackers");
        this.f8913e.addAll(list);
    }

    public void addCompleteTrackers(List<? extends VastTracker> list) {
        l.f(list, "completeTrackers");
        this.f8912d.addAll(list);
    }

    public void addErrorTrackers(List<? extends VastTracker> list) {
        l.f(list, "errorTrackers");
        this.f8916h.addAll(list);
    }

    public void addFractionalTrackers(List<VastFractionalProgressTracker> list) {
        l.f(list, "fractionalTrackers");
        this.f8917i.addAll(list);
        C25225a.m3957U2(this.f8917i);
    }

    public void addImpressionTrackers(List<? extends VastTracker> list) {
        l.f(list, "impressionTrackers");
        this.f8909a.addAll(list);
    }

    public void addPauseTrackers(List<? extends VastTracker> list) {
        l.f(list, "pauseTrackers");
        this.f8910b.addAll(list);
    }

    public void addResumeTrackers(List<? extends VastTracker> list) {
        l.f(list, "resumeTrackers");
        this.f8911c.addAll(list);
    }

    public void addSkipTrackers(List<? extends VastTracker> list) {
        l.f(list, "skipTrackers");
        this.f8914f.addAll(list);
    }

    public void addVastCompanionAdConfig(VastCompanionAdConfig vastCompanionAdConfig) {
        l.f(vastCompanionAdConfig, "vastCompanionAdConfig");
        getVastCompanionAdConfigs().add(vastCompanionAdConfig);
    }

    public void addVastCompanionAdConfigs(Iterable<? extends VastCompanionAdConfig> iterable) {
        l.f(iterable, "vastCompanionAdConfigs");
        for (VastCompanionAdConfig vastCompanionAdConfig : iterable) {
            addVastCompanionAdConfig(vastCompanionAdConfig);
        }
    }

    public void addVideoTrackers(JSONObject jSONObject) {
        List<String> list;
        if (jSONObject == null) {
            return;
        }
        JSONArray optJSONArray = jSONObject.optJSONArray(Constants.VIDEO_TRACKING_URLS_KEY);
        JSONArray optJSONArray2 = jSONObject.optJSONArray("events");
        if (optJSONArray == null || optJSONArray2 == null) {
            return;
        }
        int length = optJSONArray2.length();
        for (int i = 0; i < length; i++) {
            String optString = optJSONArray2.optString(i);
            if (optString == null) {
                list = null;
            } else {
                ArrayList arrayList = new ArrayList();
                int length2 = optJSONArray.length();
                int i2 = 0;
                while (true) {
                    list = arrayList;
                    if (i2 < length2) {
                        String optString2 = optJSONArray.optString(i2);
                        if (optString2 != null) {
                            arrayList.add(r.t(optString2, Constants.VIDEO_TRACKING_URL_MACRO, optString, false, 4));
                        }
                        i2++;
                    }
                }
            }
            VideoTrackingEvent fromString = VideoTrackingEvent.Companion.fromString(optString);
            if (optString != null && list != null) {
                switch (fromString.ordinal()) {
                    case 0:
                        ArrayList arrayList2 = new ArrayList(C25225a.m4004J(list, 10));
                        for (String str : list) {
                            arrayList2.add(new VastAbsoluteProgressTracker$Builder(str, 0).build());
                        }
                        addAbsoluteTrackers(arrayList2);
                        continue;
                    case 1:
                    case 2:
                    case 3:
                        float f = fromString.toFloat();
                        ArrayList arrayList3 = new ArrayList(C25225a.m4004J(list, 10));
                        for (String str2 : list) {
                            arrayList3.add(new VastFractionalProgressTracker$Builder(str2, f).build());
                        }
                        addFractionalTrackers(arrayList3);
                        continue;
                    case 4:
                        addCompleteTrackers(m36225a(list));
                        continue;
                    case 5:
                        List<VastTracker> m36225a = m36225a(list);
                        for (VastCompanionAdConfig vastCompanionAdConfig : getVastCompanionAdConfigs()) {
                            vastCompanionAdConfig.addCreativeViewTrackers(m36225a);
                        }
                        continue;
                    case 6:
                        List<VastTracker> m36225a2 = m36225a(list);
                        for (VastCompanionAdConfig vastCompanionAdConfig2 : getVastCompanionAdConfigs()) {
                            vastCompanionAdConfig2.addClickTrackers(m36225a2);
                        }
                        continue;
                    default:
                        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, C22128a.m8543z2("Encountered unknown video tracking event: ", optString));
                        continue;
                }
            }
        }
    }

    public void addViewabilityVendors(Set<? extends ViewabilityVendor> set) {
        if (set != null) {
            this.f8919k.addAll(set);
        }
    }

    /* renamed from: b */
    public final void m36224b(Context context, int i, Integer num) {
        TrackingRequest.makeVastTrackingHttpRequest(this.f8915g, (VastErrorCode) null, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
        String clickThroughUrl = getClickThroughUrl();
        if (clickThroughUrl == null || clickThroughUrl.length() == 0) {
            return;
        }
        UrlHandler build = new UrlHandler.Builder().withDspCreativeId(getDspCreativeId()).withoutMoPubBrowser().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).withResultActions(new handleClick.urlHandler.1(this, context, num)).build();
        String clickThroughUrl2 = getClickThroughUrl();
        if (clickThroughUrl2 == null) {
            return;
        }
        build.handleUrl(context, clickThroughUrl2);
    }

    public ArrayList<VastAbsoluteProgressTracker> getAbsoluteTrackers() {
        return new ArrayList<>(this.f8918j);
    }

    public String getClickThroughUrl() {
        return this.f8920l;
    }

    public ArrayList<VastTracker> getClickTrackers() {
        return new ArrayList<>(this.f8915g);
    }

    public ArrayList<VastTracker> getCloseTrackers() {
        return new ArrayList<>(this.f8913e);
    }

    public ArrayList<VastTracker> getCompleteTrackers() {
        return new ArrayList<>(this.f8912d);
    }

    public int getCountdownTimerDuration() {
        return this.f8927s;
    }

    public String getCustomCloseIconUrl() {
        return this.f8931w;
    }

    public String getCustomCtaText() {
        return this.f8929u;
    }

    public String getCustomSkipText() {
        return this.f8930v;
    }

    public String getDiskMediaFileUrl() {
        return this.f8922n;
    }

    public String getDspCreativeId() {
        return this.f8933y;
    }

    public boolean getEnableClickExperiment() {
        return this.f8928t;
    }

    public ArrayList<VastTracker> getErrorTrackers() {
        return new ArrayList<>(this.f8916h);
    }

    public ArrayList<VastFractionalProgressTracker> getFractionalTrackers() {
        return new ArrayList<>(this.f8917i);
    }

    public ArrayList<VastTracker> getImpressionTrackers() {
        return new ArrayList<>(this.f8909a);
    }

    public String getNetworkMediaFileUrl() {
        return this.f8921m;
    }

    public ArrayList<VastTracker> getPauseTrackers() {
        return new ArrayList<>(this.f8910b);
    }

    public String getPrivacyInformationIconClickthroughUrl() {
        return this.f8908A;
    }

    public String getPrivacyInformationIconImageUrl() {
        return this.f8934z;
    }

    public int getRemainingProgressTrackerCount() {
        return getUntriggeredTrackersBefore(Integer.MAX_VALUE, Integer.MAX_VALUE).size();
    }

    public ArrayList<VastTracker> getResumeTrackers() {
        return new ArrayList<>(this.f8911c);
    }

    public String getSkipOffset() {
        return this.f8923o;
    }

    public Integer getSkipOffsetMillis(int i) throws NumberFormatException {
        Integer num;
        String skipOffset = getSkipOffset();
        Integer num2 = null;
        if (skipOffset != null) {
            VastAbsoluteProgressTracker$Companion vastAbsoluteProgressTracker$Companion = VastAbsoluteProgressTracker.Companion;
            if (vastAbsoluteProgressTracker$Companion.isAbsoluteTracker(skipOffset)) {
                num = vastAbsoluteProgressTracker$Companion.parseAbsoluteOffset(skipOffset);
            } else {
                VastFractionalProgressTracker$Companion vastFractionalProgressTracker$Companion = VastFractionalProgressTracker.Companion;
                if (vastFractionalProgressTracker$Companion.isPercentageTracker(skipOffset)) {
                    num = vastFractionalProgressTracker$Companion.parsePercentageOffset(skipOffset, i);
                } else {
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, C22128a.m8543z2("Invalid VAST skipoffset format: ", skipOffset));
                    num = null;
                }
            }
            num2 = null;
            if (num != null) {
                num2 = Integer.valueOf(Math.min(num.intValue(), i));
            }
        }
        return num2;
    }

    public ArrayList<VastTracker> getSkipTrackers() {
        return new ArrayList<>(this.f8914f);
    }

    public List<VastTracker> getUntriggeredTrackersBefore(int i, int i2) {
        if (i2 <= 0 || i < 0) {
            return s.a;
        }
        ArrayList arrayList = new ArrayList();
        VastAbsoluteProgressTracker build = new VastAbsoluteProgressTracker$Builder("", i).build();
        for (VastAbsoluteProgressTracker vastAbsoluteProgressTracker : this.f8918j) {
            if (vastAbsoluteProgressTracker.compareTo(build) <= 0 && !vastAbsoluteProgressTracker.isTracked()) {
                arrayList.add(vastAbsoluteProgressTracker);
            }
        }
        VastFractionalProgressTracker build2 = new VastFractionalProgressTracker$Builder("", i / i2).build();
        for (VastFractionalProgressTracker vastFractionalProgressTracker : this.f8917i) {
            if (vastFractionalProgressTracker.compareTo(build2) <= 0 && !vastFractionalProgressTracker.isTracked()) {
                arrayList.add(vastFractionalProgressTracker);
            }
        }
        return arrayList;
    }

    public Set<VastCompanionAdConfig> getVastCompanionAdConfigs() {
        return this.f8924p;
    }

    public VastIconConfig getVastIconConfig() {
        return this.f8925q;
    }

    public VideoViewabilityTracker getVideoViewabilityTracker() {
        return this.f8932x;
    }

    public Set<ViewabilityVendor> getViewabilityVendors() {
        return new HashSet(this.f8919k);
    }

    public void handleClickForResult(Activity activity, int i, int i2) {
        l.f(activity, "activity");
        m36224b(activity, i, Integer.valueOf(i2));
    }

    public void handleClickWithoutResult(Context context, int i) {
        l.f(context, AnalyticsConstants.CONTEXT);
        Context applicationContext = context.getApplicationContext();
        l.b(applicationContext, "context.applicationContext");
        m36224b(applicationContext, i, null);
    }

    public void handleClose(Context context, int i) {
        l.f(context, AnalyticsConstants.CONTEXT);
        TrackingRequest.makeVastTrackingHttpRequest(this.f8913e, (VastErrorCode) null, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
    }

    public void handleComplete(Context context, int i) {
        l.f(context, AnalyticsConstants.CONTEXT);
        TrackingRequest.makeVastTrackingHttpRequest(this.f8912d, (VastErrorCode) null, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
    }

    public void handleError(Context context, VastErrorCode vastErrorCode, int i) {
        l.f(context, AnalyticsConstants.CONTEXT);
        TrackingRequest.makeVastTrackingHttpRequest(this.f8916h, vastErrorCode, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
    }

    public void handleImpression(Context context, int i) {
        l.f(context, AnalyticsConstants.CONTEXT);
        TrackingRequest.makeVastTrackingHttpRequest(this.f8909a, (VastErrorCode) null, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
    }

    public void handlePause(Context context, int i) {
        l.f(context, AnalyticsConstants.CONTEXT);
        TrackingRequest.makeVastTrackingHttpRequest(this.f8910b, (VastErrorCode) null, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
    }

    public void handleResume(Context context, int i) {
        l.f(context, AnalyticsConstants.CONTEXT);
        TrackingRequest.makeVastTrackingHttpRequest(this.f8911c, (VastErrorCode) null, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
    }

    public void handleSkip(Context context, int i) {
        l.f(context, AnalyticsConstants.CONTEXT);
        TrackingRequest.makeVastTrackingHttpRequest(this.f8914f, (VastErrorCode) null, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
    }

    public boolean hasCompanionAd() {
        return !getVastCompanionAdConfigs().isEmpty();
    }

    public boolean isRewarded() {
        return this.f8926r;
    }

    public void setClickThroughUrl(String str) {
        this.f8920l = str;
    }

    public void setCountdownTimerDuration(int i) {
        this.f8927s = i;
    }

    public void setCustomCloseIconUrl(String str) {
        if (str == null) {
            str = this.f8931w;
        }
        this.f8931w = str;
    }

    public void setCustomCtaText(String str) {
        if (str == null) {
            str = this.f8929u;
        }
        this.f8929u = str;
    }

    public void setCustomSkipText(String str) {
        if (str == null) {
            str = this.f8930v;
        }
        this.f8930v = str;
    }

    public void setDiskMediaFileUrl(String str) {
        this.f8922n = str;
    }

    public void setDspCreativeId(String str) {
        if (str == null) {
            str = this.f8933y;
        }
        this.f8933y = str;
    }

    public void setEnableClickExperiment(boolean z) {
        this.f8928t = z;
    }

    public void setNetworkMediaFileUrl(String str) {
        this.f8921m = str;
    }

    public void setPrivacyInformationIconClickthroughUrl(String str) {
        this.f8908A = str;
    }

    public void setPrivacyInformationIconImageUrl(String str) {
        if (str == null) {
            str = this.f8934z;
        }
        this.f8934z = str;
    }

    public void setRewarded(boolean z) {
        this.f8926r = z;
    }

    public void setSkipOffset(String str) {
        this.f8923o = str;
    }

    public void setVastIconConfig(VastIconConfig vastIconConfig) {
        this.f8925q = vastIconConfig;
    }

    public void setVideoViewabilityTracker(VideoViewabilityTracker videoViewabilityTracker) {
        if (videoViewabilityTracker == null) {
            videoViewabilityTracker = this.f8932x;
        }
        this.f8932x = videoViewabilityTracker;
    }

    public String toJsonString() {
        e.m.e.l lVar = new e.m.e.l();
        lVar.e.add(new a());
        String m = lVar.a().m(this);
        l.b(m, "gson.toJson(this@VastVideoConfig)");
        return m;
    }
}
