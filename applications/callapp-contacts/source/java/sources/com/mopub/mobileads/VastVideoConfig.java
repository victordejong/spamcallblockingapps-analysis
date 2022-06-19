package com.mopub.mobileads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.gson.AbstractC16088j;
import com.google.gson.AbstractC16090k;
import com.google.gson.C15965f;
import com.google.gson.C15972g;
import com.google.gson.annotations.AbstractC15952b;
import com.google.gson.p399a.C15950a;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.mopub.common.Constants;
import com.mopub.common.MoPubBrowser;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.ViewabilityVendor;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Intents;
import com.mopub.exceptions.IntentNotResolvableException;
import com.mopub.mobileads.VastAbsoluteProgressTracker;
import com.mopub.mobileads.VastFractionalProgressTracker;
import com.mopub.mobileads.VastTracker;
import com.mopub.network.TrackingRequest;
import io.bidmachine.utils.IabUtils;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.p532h.C18425p;
import org.json.JSONArray;
import org.json.JSONObject;
import proguard.optimize.gson.C21025a;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��´\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010#\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0002\b!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0010 \n\u0002\b\u000b\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0010\u001c\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0017\u0018�� ª\u00012\u00020\u0001:\u0006ª\u0001«\u0001¬\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010o\u001a\u00020p2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00050qH\u0016J\u0016\u0010r\u001a\u00020p2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00070qH\u0016J\u0016\u0010s\u001a\u00020p2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00070qH\u0016J\u0016\u0010t\u001a\u00020p2\f\u0010u\u001a\b\u0012\u0004\u0012\u00020\u00190qH\u0012J\u0016\u0010v\u001a\u00020p2\f\u0010u\u001a\b\u0012\u0004\u0012\u00020\u00190qH\u0012J\u0016\u0010w\u001a\u00020p2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00070qH\u0016J\u0016\u0010x\u001a\u00020p2\f\u0010u\u001a\b\u0012\u0004\u0012\u00020\u00190qH\u0012J\u0016\u0010y\u001a\u00020p2\f\u0010@\u001a\b\u0012\u0004\u0012\u00020\u00070qH\u0016J\u0016\u0010z\u001a\u00020p2\f\u0010B\u001a\b\u0012\u0004\u0012\u00020\f0qH\u0016J\u001e\u0010{\u001a\u00020p2\f\u0010u\u001a\b\u0012\u0004\u0012\u00020\u00190q2\u0006\u0010|\u001a\u00020}H\u0012J\u0016\u0010~\u001a\u00020p2\f\u0010D\u001a\b\u0012\u0004\u0012\u00020\u00070qH\u0016J\u0016\u0010\u007f\u001a\u00020p2\f\u0010K\u001a\b\u0012\u0004\u0012\u00020\u00070qH\u0016J\u0017\u0010\u0080\u0001\u001a\u00020p2\f\u0010U\u001a\b\u0012\u0004\u0012\u00020\u00070qH\u0016J\u0017\u0010\u0081\u0001\u001a\u00020p2\f\u0010Z\u001a\b\u0012\u0004\u0012\u00020\u00070qH\u0016J\u0017\u0010\u0082\u0001\u001a\u00020p2\f\u0010u\u001a\b\u0012\u0004\u0012\u00020\u00190qH\u0012J\u0012\u0010\u0083\u0001\u001a\u00020p2\u0007\u0010\u0084\u0001\u001a\u00020]H\u0016J\u0018\u0010\u0085\u0001\u001a\u00020p2\r\u0010\\\u001a\t\u0012\u0004\u0012\u00020]0\u0086\u0001H\u0016J\u0015\u0010\u0087\u0001\u001a\u00020p2\n\u0010\u0088\u0001\u001a\u0005\u0018\u00010\u0089\u0001H\u0016J\u0019\u0010\u008a\u0001\u001a\u00020p2\u000e\u0010l\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010mH\u0016J\u001d\u0010\u008b\u0001\u001a\b\u0012\u0004\u0012\u00020\u00070q2\f\u0010u\u001a\b\u0012\u0004\u0012\u00020\u00190qH\u0012J\u001a\u0010\u008c\u0001\u001a\u0004\u0018\u00010%2\u0007\u0010\u008d\u0001\u001a\u00020%H\u0016¢\u0006\u0003\u0010\u008e\u0001J!\u0010\u008f\u0001\u001a\b\u0012\u0004\u0012\u00020\u00070q2\u0007\u0010\u0090\u0001\u001a\u00020%2\u0007\u0010\u0091\u0001\u001a\u00020%H\u0016J-\u0010\u0092\u0001\u001a\u00020p2\b\u0010\u0093\u0001\u001a\u00030\u0094\u00012\u0007\u0010\u0095\u0001\u001a\u00020%2\t\u0010\u0096\u0001\u001a\u0004\u0018\u00010%H\u0012¢\u0006\u0003\u0010\u0097\u0001J%\u0010\u0098\u0001\u001a\u00020p2\b\u0010\u0099\u0001\u001a\u00030\u009a\u00012\u0007\u0010\u0095\u0001\u001a\u00020%2\u0007\u0010\u0096\u0001\u001a\u00020%H\u0016J\u001c\u0010\u009b\u0001\u001a\u00020p2\b\u0010\u0093\u0001\u001a\u00030\u0094\u00012\u0007\u0010\u0095\u0001\u001a\u00020%H\u0016J\u001c\u0010\u009c\u0001\u001a\u00020p2\b\u0010\u0093\u0001\u001a\u00030\u0094\u00012\u0007\u0010\u0095\u0001\u001a\u00020%H\u0016J\u001c\u0010\u009d\u0001\u001a\u00020p2\b\u0010\u0093\u0001\u001a\u00030\u0094\u00012\u0007\u0010\u0095\u0001\u001a\u00020%H\u0016J(\u0010\u009e\u0001\u001a\u00020p2\b\u0010\u0093\u0001\u001a\u00030\u0094\u00012\n\u0010\u009f\u0001\u001a\u0005\u0018\u00010 \u00012\u0007\u0010\u0095\u0001\u001a\u00020%H\u0016J\u001c\u0010¡\u0001\u001a\u00020p2\b\u0010\u0093\u0001\u001a\u00030\u0094\u00012\u0007\u0010\u0095\u0001\u001a\u00020%H\u0016J\u001c\u0010¢\u0001\u001a\u00020p2\b\u0010\u0093\u0001\u001a\u00030\u0094\u00012\u0007\u0010\u0095\u0001\u001a\u00020%H\u0016J\u001c\u0010£\u0001\u001a\u00020p2\b\u0010\u0093\u0001\u001a\u00030\u0094\u00012\u0007\u0010\u0095\u0001\u001a\u00020%H\u0016J\u001c\u0010¤\u0001\u001a\u00020p2\b\u0010\u0093\u0001\u001a\u00030\u0094\u00012\u0007\u0010\u0095\u0001\u001a\u00020%H\u0016J\t\u0010¥\u0001\u001a\u00020;H\u0016J%\u0010¦\u0001\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010q2\t\u0010§\u0001\u001a\u0004\u0018\u00010\u00192\u0007\u0010u\u001a\u00030¨\u0001H\u0012J\t\u0010©\u0001\u001a\u00020\u0019H\u0016R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0012X\u0093\u0004¢\u0006\u0002\n��R\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\u00048\u0012X\u0093\u0004¢\u0006\u0002\n��R\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00048\u0012X\u0093\u0004¢\u0006\u0002\n��R\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\u00048\u0012X\u0093\u0004¢\u0006\u0002\n��R\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u00048\u0012X\u0093\u0004¢\u0006\u0002\n��R\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u00048\u0012X\u0093\u0004¢\u0006\u0002\n��R\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00070\u00048\u0012X\u0093\u0004¢\u0006\u0002\n��R\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\u00048\u0012X\u0093\u0004¢\u0006\u0002\n��R\u0016\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00070\u00048\u0012X\u0093\u0004¢\u0006\u0002\n��R\u0016\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00070\u00048\u0012X\u0093\u0004¢\u0006\u0002\n��R\u0016\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u00128\u0012X\u0093\u0004¢\u0006\u0002\n��R\u001a\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00050\u00158VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R \u0010\u0018\u001a\u0004\u0018\u00010\u00198\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00070\u00158VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010\u0017R\u001a\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00070\u00158VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\u0017R\u001a\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00070\u00158VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b#\u0010\u0017R\u001e\u0010$\u001a\u00020%8\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n��\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R*\u0010+\u001a\u0004\u0018\u00010\u00192\b\u0010*\u001a\u0004\u0018\u00010\u00198\u0016@VX\u0097\u000e¢\u0006\u000e\n��\u001a\u0004\b,\u0010\u001b\"\u0004\b-\u0010\u001dR*\u0010.\u001a\u0004\u0018\u00010\u00192\b\u0010*\u001a\u0004\u0018\u00010\u00198\u0016@VX\u0097\u000e¢\u0006\u000e\n��\u001a\u0004\b/\u0010\u001b\"\u0004\b0\u0010\u001dR*\u00101\u001a\u0004\u0018\u00010\u00192\b\u0010*\u001a\u0004\u0018\u00010\u00198\u0016@VX\u0097\u000e¢\u0006\u000e\n��\u001a\u0004\b2\u0010\u001b\"\u0004\b3\u0010\u001dR \u00104\u001a\u0004\u0018\u00010\u00198\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n��\u001a\u0004\b5\u0010\u001b\"\u0004\b6\u0010\u001dR*\u00107\u001a\u0004\u0018\u00010\u00192\b\u0010*\u001a\u0004\u0018\u00010\u00198\u0016@VX\u0097\u000e¢\u0006\u000e\n��\u001a\u0004\b8\u0010\u001b\"\u0004\b9\u0010\u001dR\u001e\u0010:\u001a\u00020;8\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n��\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R\u001a\u0010@\u001a\b\u0012\u0004\u0012\u00020\u00070\u00158VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bA\u0010\u0017R\u001a\u0010B\u001a\b\u0012\u0004\u0012\u00020\f0\u00158VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bC\u0010\u0017R\u001a\u0010D\u001a\b\u0012\u0004\u0012\u00020\u00070\u00158VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bE\u0010\u0017R\u001e\u0010F\u001a\u00020;8\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n��\u001a\u0004\bF\u0010=\"\u0004\bG\u0010?R \u0010H\u001a\u0004\u0018\u00010\u00198\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n��\u001a\u0004\bI\u0010\u001b\"\u0004\bJ\u0010\u001dR\u001a\u0010K\u001a\b\u0012\u0004\u0012\u00020\u00070\u00158VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bL\u0010\u0017R \u0010M\u001a\u0004\u0018\u00010\u00198\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n��\u001a\u0004\bN\u0010\u001b\"\u0004\bO\u0010\u001dR*\u0010P\u001a\u0004\u0018\u00010\u00192\b\u0010*\u001a\u0004\u0018\u00010\u00198\u0016@VX\u0097\u000e¢\u0006\u000e\n��\u001a\u0004\bQ\u0010\u001b\"\u0004\bR\u0010\u001dR\u0014\u0010S\u001a\u00020%8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bT\u0010'R\u001a\u0010U\u001a\b\u0012\u0004\u0012\u00020\u00070\u00158VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bV\u0010\u0017R \u0010W\u001a\u0004\u0018\u00010\u00198\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n��\u001a\u0004\bX\u0010\u001b\"\u0004\bY\u0010\u001dR\u001a\u0010Z\u001a\b\u0012\u0004\u0012\u00020\u00070\u00158VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b[\u0010\u0017R\u001c\u0010\\\u001a\b\u0012\u0004\u0012\u00020]0\u00128\u0016X\u0097\u0004¢\u0006\b\n��\u001a\u0004\b^\u0010_R \u0010`\u001a\u0004\u0018\u00010a8\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n��\u001a\u0004\bb\u0010c\"\u0004\bd\u0010eR*\u0010g\u001a\u0004\u0018\u00010f2\b\u0010*\u001a\u0004\u0018\u00010f8\u0016@VX\u0097\u000e¢\u0006\u000e\n��\u001a\u0004\bh\u0010i\"\u0004\bj\u0010kR\u001a\u0010l\u001a\b\u0012\u0004\u0012\u00020\u00130m8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bn\u0010_¨\u0006\u00ad\u0001"}, m4298d2 = {"Lcom/mopub/mobileads/VastVideoConfig;", "Ljava/io/Serializable;", "()V", "_absoluteTrackers", "", "Lcom/mopub/mobileads/VastAbsoluteProgressTracker;", "_clickTrackers", "Lcom/mopub/mobileads/VastTracker;", "_closeTrackers", "_completeTrackers", "_errorTrackers", "_fractionalTrackers", "Lcom/mopub/mobileads/VastFractionalProgressTracker;", "_impressionTrackers", "_pauseTrackers", "_resumeTrackers", "_skipTrackers", "_viewabilityVendors", "", "Lcom/mopub/common/ViewabilityVendor;", "absoluteTrackers", "Ljava/util/ArrayList;", "getAbsoluteTrackers", "()Ljava/util/ArrayList;", "clickThroughUrl", "", "getClickThroughUrl", "()Ljava/lang/String;", "setClickThroughUrl", "(Ljava/lang/String;)V", "clickTrackers", "getClickTrackers", "closeTrackers", "getCloseTrackers", "completeTrackers", "getCompleteTrackers", "countdownTimerDuration", "", "getCountdownTimerDuration", "()I", "setCountdownTimerDuration", "(I)V", "value", "customCloseIconUrl", "getCustomCloseIconUrl", "setCustomCloseIconUrl", "customCtaText", "getCustomCtaText", "setCustomCtaText", "customSkipText", "getCustomSkipText", "setCustomSkipText", "diskMediaFileUrl", "getDiskMediaFileUrl", "setDiskMediaFileUrl", "dspCreativeId", "getDspCreativeId", "setDspCreativeId", "enableClickExperiment", "", "getEnableClickExperiment", "()Z", "setEnableClickExperiment", "(Z)V", "errorTrackers", "getErrorTrackers", "fractionalTrackers", "getFractionalTrackers", "impressionTrackers", "getImpressionTrackers", "isRewarded", "setRewarded", "networkMediaFileUrl", "getNetworkMediaFileUrl", "setNetworkMediaFileUrl", "pauseTrackers", "getPauseTrackers", "privacyInformationIconClickthroughUrl", "getPrivacyInformationIconClickthroughUrl", "setPrivacyInformationIconClickthroughUrl", "privacyInformationIconImageUrl", "getPrivacyInformationIconImageUrl", "setPrivacyInformationIconImageUrl", "remainingProgressTrackerCount", "getRemainingProgressTrackerCount", "resumeTrackers", "getResumeTrackers", IabUtils.KEY_SKIP_OFFSET, "getSkipOffset", "setSkipOffset", "skipTrackers", "getSkipTrackers", "vastCompanionAdConfigs", "Lcom/mopub/mobileads/VastCompanionAdConfig;", "getVastCompanionAdConfigs", "()Ljava/util/Set;", "vastIconConfig", "Lcom/mopub/mobileads/VastIconConfig;", "getVastIconConfig", "()Lcom/mopub/mobileads/VastIconConfig;", "setVastIconConfig", "(Lcom/mopub/mobileads/VastIconConfig;)V", "Lcom/mopub/mobileads/VideoViewabilityTracker;", "videoViewabilityTracker", "getVideoViewabilityTracker", "()Lcom/mopub/mobileads/VideoViewabilityTracker;", "setVideoViewabilityTracker", "(Lcom/mopub/mobileads/VideoViewabilityTracker;)V", "viewabilityVendors", "", "getViewabilityVendors", "addAbsoluteTrackers", "", "", "addClickTrackers", "addCloseTrackers", "addCompanionAdClickTrackersForUrls", Constants.VIDEO_TRACKING_URLS_KEY, "addCompanionAdViewTrackersForUrls", "addCompleteTrackers", "addCompleteTrackersForUrls", "addErrorTrackers", "addFractionalTrackers", "addFractionalTrackersForUrls", "fraction", "", "addImpressionTrackers", "addPauseTrackers", "addResumeTrackers", "addSkipTrackers", "addStartTrackersForUrls", "addVastCompanionAdConfig", "vastCompanionAdConfig", "addVastCompanionAdConfigs", "", "addVideoTrackers", "videoTrackers", "Lorg/json/JSONObject;", "addViewabilityVendors", "createVastTrackersForUrls", "getSkipOffsetMillis", "videoDuration", "(I)Ljava/lang/Integer;", "getUntriggeredTrackersBefore", "currentPositionMillis", "videoLengthMillis", "handleClick", "context", "Landroid/content/Context;", "contentPlayHead", "requestCode", "(Landroid/content/Context;ILjava/lang/Integer;)V", "handleClickForResult", "activity", "Landroid/app/Activity;", "handleClickWithoutResult", "handleClose", "handleComplete", "handleError", "errorCode", "Lcom/mopub/mobileads/VastErrorCode;", "handleImpression", "handlePause", "handleResume", "handleSkip", "hasCompanionAd", "hydrateUrls", "event", "Lorg/json/JSONArray;", "toJsonString", "Companion", "VastVideoConfigTypeAdapter", "VastVideoConfigTypeAdapterFactory", "mopub-sdk-base_release"}, m4297k = 1, m4296mv = {1, 1, 16})
@Mockable
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastVideoConfig.class */
public class VastVideoConfig implements Serializable {
    public static final Companion Companion = new Companion(null);
    @AbstractC15952b(m7988a = Constants.VAST_PRIVACY_ICON_CLICK_URL)

    /* renamed from: A */
    private String f59527A;

    /* renamed from: l */
    private String f59539l;
    @AbstractC15952b(m7988a = Constants.VAST_URL_NETWORK_MEDIA_FILE)

    /* renamed from: m */
    private String f59540m;
    @AbstractC15952b(m7988a = Constants.VAST_URL_DISK_MEDIA_FILE)

    /* renamed from: n */
    private String f59541n;
    @AbstractC15952b(m7988a = Constants.VAST_SKIP_OFFSET)

    /* renamed from: o */
    private String f59542o;
    @AbstractC15952b(m7988a = Constants.VAST_ICON_CONFIG)

    /* renamed from: q */
    private VastIconConfig f59544q;
    @AbstractC15952b(m7988a = Constants.VAST_IS_REWARDED)

    /* renamed from: r */
    private boolean f59545r;
    @AbstractC15952b(m7988a = Constants.VAST_COUNTDOWN_TIMER_DURATION)

    /* renamed from: s */
    private int f59546s;
    @AbstractC15952b(m7988a = Constants.VAST_ENABLE_CLICK_EXP)

    /* renamed from: t */
    private boolean f59547t;
    @AbstractC15952b(m7988a = Constants.VAST_CUSTOM_TEXT_CTA)

    /* renamed from: u */
    private String f59548u;
    @AbstractC15952b(m7988a = Constants.VAST_CUSTOM_TEXT_SKIP)

    /* renamed from: v */
    private String f59549v;
    @AbstractC15952b(m7988a = Constants.VAST_CUSTOM_CLOSE_ICON_URL)

    /* renamed from: w */
    private String f59550w;
    @AbstractC15952b(m7988a = Constants.VAST_VIDEO_VIEWABILITY_TRACKER)

    /* renamed from: x */
    private VideoViewabilityTracker f59551x;
    @AbstractC15952b(m7988a = Constants.VAST_DSP_CREATIVE_ID)

    /* renamed from: y */
    private String f59552y;
    @AbstractC15952b(m7988a = Constants.VAST_PRIVACY_ICON_IMAGE_URL)

    /* renamed from: z */
    private String f59553z;
    @AbstractC15952b(m7988a = Constants.VAST_TRACKERS_IMPRESSION)

    /* renamed from: a */
    private List<VastTracker> f59528a = new ArrayList();
    @AbstractC15952b(m7988a = Constants.VAST_TRACKERS_PAUSE)

    /* renamed from: b */
    private List<VastTracker> f59529b = new ArrayList();
    @AbstractC15952b(m7988a = Constants.VAST_TRACKERS_RESUME)

    /* renamed from: c */
    private List<VastTracker> f59530c = new ArrayList();
    @AbstractC15952b(m7988a = Constants.VAST_TRACKERS_COMPLETE)

    /* renamed from: d */
    private List<VastTracker> f59531d = new ArrayList();
    @AbstractC15952b(m7988a = Constants.VAST_TRACKERS_CLOSE)

    /* renamed from: e */
    private List<VastTracker> f59532e = new ArrayList();
    @AbstractC15952b(m7988a = Constants.VAST_TRACKERS_SKIP)

    /* renamed from: f */
    private List<VastTracker> f59533f = new ArrayList();
    @AbstractC15952b(m7988a = Constants.VAST_TRACKERS_CLICK)

    /* renamed from: g */
    private List<VastTracker> f59534g = new ArrayList();
    @AbstractC15952b(m7988a = Constants.VAST_TRACKERS_ERROR)

    /* renamed from: h */
    private List<VastTracker> f59535h = new ArrayList();
    @AbstractC15952b(m7988a = Constants.VAST_TRACKERS_FRACTIONAL)

    /* renamed from: i */
    private List<VastFractionalProgressTracker> f59536i = new ArrayList();
    @AbstractC15952b(m7988a = Constants.VAST_TRACKERS_ABSOLUTE)

    /* renamed from: j */
    private List<VastAbsoluteProgressTracker> f59537j = new ArrayList();
    @AbstractC15952b(m7988a = Constants.VIEWABILITY_VERIFICATION_RESOURCES)

    /* renamed from: k */
    private Set<ViewabilityVendor> f59538k = new LinkedHashSet();
    @AbstractC15952b(m7988a = Constants.VAST_COMPANION_ADS)

    /* renamed from: p */
    private Set<VastCompanionAdConfig> f59543p = new HashSet();

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\t"}, m4298d2 = {"Lcom/mopub/mobileads/VastVideoConfig$Companion;", "", "()V", "serialVersionUID", "", "fromVastVideoConfigString", "Lcom/mopub/mobileads/VastVideoConfig;", "input", "", "mopub-sdk-base_release"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastVideoConfig$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final /* synthetic */ void fromJson$16(C15965f c15965f, JsonReader jsonReader, _OptimizedJsonReader _optimizedjsonreader) {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                _optimizedjsonreader.mo123b(jsonReader);
                jsonReader.skipValue();
            }
            jsonReader.endObject();
        }

        public final VastVideoConfig fromVastVideoConfigString(String input) throws IOException, ClassNotFoundException {
            C18524p.m3841c(input, "input");
            Object m7964a = new C15972g().m7959a(new C16822a()).m7960a().m7964a(input, (Class<Object>) VastVideoConfig.class);
            C18524p.m3849a(m7964a, "gson.fromJson(input, VastVideoConfig::class.java)");
            return (VastVideoConfig) m7964a;
        }

        public final /* synthetic */ void toJson$16(C15965f c15965f, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
            jsonWriter.beginObject();
            jsonWriter.endObject();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��2\u000e\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J \u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\f\u0010\u000b\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0002H\u0016¨\u0006\f"}, m4298d2 = {"Lcom/mopub/mobileads/VastVideoConfig$VastVideoConfigTypeAdapter;", "Lcom/google/gson/TypeAdapter;", "Ljava/lang/Class;", "()V", "read", "jsonReader", "Lcom/google/gson/stream/JsonReader;", "write", "", "jsonWriter", "Lcom/google/gson/stream/JsonWriter;", "clazz", "mopub-sdk-base_release"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastVideoConfig$VastVideoConfigTypeAdapter.class */
    public static final class VastVideoConfigTypeAdapter extends AbstractC16088j<Class<?>> {
        @Override // com.google.gson.AbstractC16088j
        public final Class<?> read(JsonReader jsonReader) throws IOException {
            if (jsonReader == null) {
                return null;
            }
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            try {
                return Class.forName(jsonReader.nextString());
            } catch (ClassNotFoundException e) {
                throw new IOException(e);
            }
        }

        public final void write(JsonWriter jsonWriter, Class<?> cls) throws IOException {
            if (jsonWriter == null) {
                return;
            }
            if (cls == null) {
                jsonWriter.nullValue();
            } else {
                jsonWriter.value(cls.getName());
            }
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4297k = 3, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastVideoConfig$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[VideoTrackingEvent.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[VideoTrackingEvent.START.ordinal()] = 1;
            iArr[VideoTrackingEvent.FIRST_QUARTILE.ordinal()] = 2;
            iArr[VideoTrackingEvent.MIDPOINT.ordinal()] = 3;
            iArr[VideoTrackingEvent.THIRD_QUARTILE.ordinal()] = 4;
            iArr[VideoTrackingEvent.COMPLETE.ordinal()] = 5;
            iArr[VideoTrackingEvent.COMPANION_AD_VIEW.ordinal()] = 6;
            iArr[VideoTrackingEvent.COMPANION_AD_CLICK.ordinal()] = 7;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\b\u0002\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J0\u0010\u0003\u001a\n\u0012\u0004\u0012\u0002H\u0005\u0018\u00010\u0004\"\u0004\b��\u0010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u0002H\u0005\u0018\u00010\tH\u0016¨\u0006\n"}, m4298d2 = {"Lcom/mopub/mobileads/VastVideoConfig$VastVideoConfigTypeAdapterFactory;", "Lcom/google/gson/TypeAdapterFactory;", "()V", "create", "Lcom/google/gson/TypeAdapter;", "T", "gson", "Lcom/google/gson/Gson;", "typeToken", "Lcom/google/gson/reflect/TypeToken;", "mopub-sdk-base_release"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* renamed from: com.mopub.mobileads.VastVideoConfig$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastVideoConfig$a.class */
    public static final class C16822a implements AbstractC16090k {
        @Override // com.google.gson.AbstractC16090k
        public final <T> AbstractC16088j<T> create(C15965f c15965f, C15950a<T> c15950a) {
            if (c15950a == null || !Class.class.isAssignableFrom(c15950a.getRawType())) {
                return null;
            }
            return new VastVideoConfigTypeAdapter();
        }
    }

    /* renamed from: a */
    private static List<VastTracker> m6401a(List<String> list) {
        List<String> list2 = list;
        ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list2, 10));
        for (String str : list2) {
            arrayList.add(new VastTracker.Builder(str).build());
        }
        return arrayList;
    }

    /* renamed from: a */
    private void m6402a(final Context context, int i, final Integer num) {
        TrackingRequest.makeVastTrackingHttpRequest(this.f59534g, null, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
        String clickThroughUrl = getClickThroughUrl();
        if (clickThroughUrl == null || clickThroughUrl.length() == 0) {
            return;
        }
        UrlHandler build = new UrlHandler.Builder().withDspCreativeId(getDspCreativeId()).withoutMoPubBrowser().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).withResultActions(new UrlHandler.ResultActions() { // from class: com.mopub.mobileads.VastVideoConfig$handleClick$urlHandler$1
            @Override // com.mopub.common.UrlHandler.ResultActions
            public final void urlHandlingFailed(String url, UrlAction lastFailedUrlAction) {
                C18524p.m3841c(url, "url");
                C18524p.m3841c(lastFailedUrlAction, "lastFailedUrlAction");
            }

            @Override // com.mopub.common.UrlHandler.ResultActions
            public final void urlHandlingSucceeded(String url, UrlAction urlAction) {
                C18524p.m3841c(url, "url");
                C18524p.m3841c(urlAction, "urlAction");
                if (urlAction == UrlAction.OPEN_IN_APP_BROWSER) {
                    Bundle bundle = new Bundle();
                    bundle.putString(MoPubBrowser.DESTINATION_URL_KEY, url);
                    bundle.putString(MoPubBrowser.DSP_CREATIVE_ID, VastVideoConfig.this.getDspCreativeId());
                    Intent startActivityIntent = Intents.getStartActivityIntent(context, MoPubBrowser.class, bundle);
                    try {
                        Context context2 = context;
                        if (!(context2 instanceof Activity)) {
                            Intents.startActivity(context2, startActivityIntent);
                            return;
                        }
                        Integer num2 = num;
                        if (num2 == null) {
                            throw new IllegalArgumentException("Activity context requires a requestCode".toString());
                        }
                        ((Activity) context2).startActivityForResult(startActivityIntent, num2.intValue());
                    } catch (ActivityNotFoundException e) {
                        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                        MoPubLog.log(sdkLogEvent, "Activity " + MoPubBrowser.class.getName() + " not found. Did you declare it in your AndroidManifest.xml?");
                    } catch (IntentNotResolvableException e2) {
                        MoPubLog.SdkLogEvent sdkLogEvent2 = MoPubLog.SdkLogEvent.CUSTOM;
                        MoPubLog.log(sdkLogEvent2, "Activity " + MoPubBrowser.class.getName() + " not found. Did you declare it in your AndroidManifest.xml?");
                    }
                }
            }
        }).build();
        String clickThroughUrl2 = getClickThroughUrl();
        if (clickThroughUrl2 == null) {
            return;
        }
        build.handleUrl(context, clickThroughUrl2);
    }

    /* renamed from: a */
    private void m6400a(List<String> list, float f) {
        List<String> list2 = list;
        ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list2, 10));
        for (String str : list2) {
            arrayList.add(new VastFractionalProgressTracker.Builder(str, f).build());
        }
        addFractionalTrackers(arrayList);
    }

    /* renamed from: b */
    private void m6399b(List<String> list) {
        List<String> list2 = list;
        ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list2, 10));
        for (String str : list2) {
            arrayList.add(new VastAbsoluteProgressTracker.Builder(str, 0).build());
        }
        addAbsoluteTrackers(arrayList);
    }

    /* renamed from: c */
    private void m6398c(List<String> list) {
        List<VastTracker> m6401a = m6401a(list);
        for (VastCompanionAdConfig vastCompanionAdConfig : getVastCompanionAdConfigs()) {
            vastCompanionAdConfig.addCreativeViewTrackers(m6401a);
        }
    }

    /* renamed from: d */
    private void m6397d(List<String> list) {
        List<VastTracker> m6401a = m6401a(list);
        for (VastCompanionAdConfig vastCompanionAdConfig : getVastCompanionAdConfigs()) {
            vastCompanionAdConfig.addClickTrackers(m6401a);
        }
    }

    public void addAbsoluteTrackers(List<? extends VastAbsoluteProgressTracker> absoluteTrackers) {
        C18524p.m3841c(absoluteTrackers, "absoluteTrackers");
        this.f59537j.addAll(absoluteTrackers);
        C18282n.m4160c((List) this.f59537j);
    }

    public void addClickTrackers(List<? extends VastTracker> clickTrackers) {
        C18524p.m3841c(clickTrackers, "clickTrackers");
        this.f59534g.addAll(clickTrackers);
    }

    public void addCloseTrackers(List<? extends VastTracker> closeTrackers) {
        C18524p.m3841c(closeTrackers, "closeTrackers");
        this.f59532e.addAll(closeTrackers);
    }

    public void addCompleteTrackers(List<? extends VastTracker> completeTrackers) {
        C18524p.m3841c(completeTrackers, "completeTrackers");
        this.f59531d.addAll(completeTrackers);
    }

    public void addErrorTrackers(List<? extends VastTracker> errorTrackers) {
        C18524p.m3841c(errorTrackers, "errorTrackers");
        this.f59535h.addAll(errorTrackers);
    }

    public void addFractionalTrackers(List<VastFractionalProgressTracker> fractionalTrackers) {
        C18524p.m3841c(fractionalTrackers, "fractionalTrackers");
        this.f59536i.addAll(fractionalTrackers);
        C18282n.m4160c((List) this.f59536i);
    }

    public void addImpressionTrackers(List<? extends VastTracker> impressionTrackers) {
        C18524p.m3841c(impressionTrackers, "impressionTrackers");
        this.f59528a.addAll(impressionTrackers);
    }

    public void addPauseTrackers(List<? extends VastTracker> pauseTrackers) {
        C18524p.m3841c(pauseTrackers, "pauseTrackers");
        this.f59529b.addAll(pauseTrackers);
    }

    public void addResumeTrackers(List<? extends VastTracker> resumeTrackers) {
        C18524p.m3841c(resumeTrackers, "resumeTrackers");
        this.f59530c.addAll(resumeTrackers);
    }

    public void addSkipTrackers(List<? extends VastTracker> skipTrackers) {
        C18524p.m3841c(skipTrackers, "skipTrackers");
        this.f59533f.addAll(skipTrackers);
    }

    public void addVastCompanionAdConfig(VastCompanionAdConfig vastCompanionAdConfig) {
        C18524p.m3841c(vastCompanionAdConfig, "vastCompanionAdConfig");
        getVastCompanionAdConfigs().add(vastCompanionAdConfig);
    }

    public void addVastCompanionAdConfigs(Iterable<? extends VastCompanionAdConfig> vastCompanionAdConfigs) {
        C18524p.m3841c(vastCompanionAdConfigs, "vastCompanionAdConfigs");
        for (VastCompanionAdConfig vastCompanionAdConfig : vastCompanionAdConfigs) {
            addVastCompanionAdConfig(vastCompanionAdConfig);
        }
    }

    public void addVideoTrackers(JSONObject jSONObject) {
        ArrayList arrayList;
        String a;
        if (jSONObject == null) {
            return;
        }
        JSONArray optJSONArray = jSONObject.optJSONArray(Constants.VIDEO_TRACKING_URLS_KEY);
        JSONArray optJSONArray2 = jSONObject.optJSONArray(Constants.VIDEO_TRACKING_EVENTS_KEY);
        if (optJSONArray == null || optJSONArray2 == null) {
            return;
        }
        int length = optJSONArray2.length();
        for (int i = 0; i < length; i++) {
            String optString = optJSONArray2.optString(i);
            if (optString == null) {
                arrayList = null;
            } else {
                ArrayList arrayList2 = new ArrayList();
                int length2 = optJSONArray.length();
                int i2 = 0;
                while (true) {
                    arrayList = arrayList2;
                    if (i2 < length2) {
                        String optString2 = optJSONArray.optString(i2);
                        if (optString2 != null) {
                            a = C18425p.m3958a(optString2, Constants.VIDEO_TRACKING_URL_MACRO, optString, false);
                            arrayList2.add(a);
                        }
                        i2++;
                    }
                }
            }
            VideoTrackingEvent fromString = VideoTrackingEvent.Companion.fromString(optString);
            if (optString != null && arrayList != null) {
                switch (WhenMappings.$EnumSwitchMapping$0[fromString.ordinal()]) {
                    case 1:
                        m6399b(arrayList);
                        continue;
                    case 2:
                    case 3:
                    case 4:
                        m6400a(arrayList, fromString.toFloat());
                        continue;
                    case 5:
                        addCompleteTrackers(m6401a(arrayList));
                        continue;
                    case 6:
                        m6398c(arrayList);
                        continue;
                    case 7:
                        m6397d(arrayList);
                        continue;
                    default:
                        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Encountered unknown video tracking event: ".concat(String.valueOf(optString)));
                        continue;
                }
            }
        }
    }

    public void addViewabilityVendors(Set<? extends ViewabilityVendor> set) {
        if (set != null) {
            this.f59538k.addAll(set);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x056c, code lost:
        r7.nextNull();
     */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0014 A[LOOP_START] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void fromJson$28(com.google.gson.C15965f r6, com.google.gson.stream.JsonReader r7, proguard.optimize.gson._OptimizedJsonReader r8) {
        /*
            Method dump skipped, instructions count: 1400
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.VastVideoConfig.fromJson$28(com.google.gson.f, com.google.gson.stream.JsonReader, proguard.optimize.gson._OptimizedJsonReader):void");
    }

    public ArrayList<VastAbsoluteProgressTracker> getAbsoluteTrackers() {
        return new ArrayList<>(this.f59537j);
    }

    public String getClickThroughUrl() {
        return this.f59539l;
    }

    public ArrayList<VastTracker> getClickTrackers() {
        return new ArrayList<>(this.f59534g);
    }

    public ArrayList<VastTracker> getCloseTrackers() {
        return new ArrayList<>(this.f59532e);
    }

    public ArrayList<VastTracker> getCompleteTrackers() {
        return new ArrayList<>(this.f59531d);
    }

    public int getCountdownTimerDuration() {
        return this.f59546s;
    }

    public String getCustomCloseIconUrl() {
        return this.f59550w;
    }

    public String getCustomCtaText() {
        return this.f59548u;
    }

    public String getCustomSkipText() {
        return this.f59549v;
    }

    public String getDiskMediaFileUrl() {
        return this.f59541n;
    }

    public String getDspCreativeId() {
        return this.f59552y;
    }

    public boolean getEnableClickExperiment() {
        return this.f59547t;
    }

    public ArrayList<VastTracker> getErrorTrackers() {
        return new ArrayList<>(this.f59535h);
    }

    public ArrayList<VastFractionalProgressTracker> getFractionalTrackers() {
        return new ArrayList<>(this.f59536i);
    }

    public ArrayList<VastTracker> getImpressionTrackers() {
        return new ArrayList<>(this.f59528a);
    }

    public String getNetworkMediaFileUrl() {
        return this.f59540m;
    }

    public ArrayList<VastTracker> getPauseTrackers() {
        return new ArrayList<>(this.f59529b);
    }

    public String getPrivacyInformationIconClickthroughUrl() {
        return this.f59527A;
    }

    public String getPrivacyInformationIconImageUrl() {
        return this.f59553z;
    }

    public int getRemainingProgressTrackerCount() {
        return getUntriggeredTrackersBefore(Integer.MAX_VALUE, Integer.MAX_VALUE).size();
    }

    public ArrayList<VastTracker> getResumeTrackers() {
        return new ArrayList<>(this.f59530c);
    }

    public String getSkipOffset() {
        return this.f59542o;
    }

    public Integer getSkipOffsetMillis(int i) throws NumberFormatException {
        Integer num;
        String skipOffset = getSkipOffset();
        if (skipOffset != null) {
            if (VastAbsoluteProgressTracker.Companion.isAbsoluteTracker(skipOffset)) {
                num = VastAbsoluteProgressTracker.Companion.parseAbsoluteOffset(skipOffset);
            } else if (VastFractionalProgressTracker.Companion.isPercentageTracker(skipOffset)) {
                num = VastFractionalProgressTracker.Companion.parsePercentageOffset(skipOffset, i);
            } else {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Invalid VAST skipoffset format: ".concat(String.valueOf(skipOffset)));
                num = null;
            }
            if (num == null) {
                return null;
            }
            return Integer.valueOf(Math.min(num.intValue(), i));
        }
        return null;
    }

    public ArrayList<VastTracker> getSkipTrackers() {
        return new ArrayList<>(this.f59533f);
    }

    public List<VastTracker> getUntriggeredTrackersBefore(int i, int i2) {
        if (i2 <= 0 || i < 0) {
            return C18297z.f63400a;
        }
        ArrayList arrayList = new ArrayList();
        VastAbsoluteProgressTracker build = new VastAbsoluteProgressTracker.Builder("", i).build();
        for (VastAbsoluteProgressTracker vastAbsoluteProgressTracker : this.f59537j) {
            if (vastAbsoluteProgressTracker.compareTo(build) <= 0 && !vastAbsoluteProgressTracker.isTracked()) {
                arrayList.add(vastAbsoluteProgressTracker);
            }
        }
        VastFractionalProgressTracker build2 = new VastFractionalProgressTracker.Builder("", i / i2).build();
        for (VastFractionalProgressTracker vastFractionalProgressTracker : this.f59536i) {
            if (vastFractionalProgressTracker.compareTo(build2) <= 0 && !vastFractionalProgressTracker.isTracked()) {
                arrayList.add(vastFractionalProgressTracker);
            }
        }
        return arrayList;
    }

    public Set<VastCompanionAdConfig> getVastCompanionAdConfigs() {
        return this.f59543p;
    }

    public VastIconConfig getVastIconConfig() {
        return this.f59544q;
    }

    public VideoViewabilityTracker getVideoViewabilityTracker() {
        return this.f59551x;
    }

    public Set<ViewabilityVendor> getViewabilityVendors() {
        return new HashSet(this.f59538k);
    }

    public void handleClickForResult(Activity activity, int i, int i2) {
        C18524p.m3841c(activity, "activity");
        m6402a(activity, i, Integer.valueOf(i2));
    }

    public void handleClickWithoutResult(Context context, int i) {
        C18524p.m3841c(context, "context");
        Context applicationContext = context.getApplicationContext();
        C18524p.m3849a((Object) applicationContext, "context.applicationContext");
        m6402a(applicationContext, i, null);
    }

    public void handleClose(Context context, int i) {
        C18524p.m3841c(context, "context");
        TrackingRequest.makeVastTrackingHttpRequest(this.f59532e, null, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
    }

    public void handleComplete(Context context, int i) {
        C18524p.m3841c(context, "context");
        TrackingRequest.makeVastTrackingHttpRequest(this.f59531d, null, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
    }

    public void handleError(Context context, VastErrorCode vastErrorCode, int i) {
        C18524p.m3841c(context, "context");
        TrackingRequest.makeVastTrackingHttpRequest(this.f59535h, vastErrorCode, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
    }

    public void handleImpression(Context context, int i) {
        C18524p.m3841c(context, "context");
        TrackingRequest.makeVastTrackingHttpRequest(this.f59528a, null, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
    }

    public void handlePause(Context context, int i) {
        C18524p.m3841c(context, "context");
        TrackingRequest.makeVastTrackingHttpRequest(this.f59529b, null, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
    }

    public void handleResume(Context context, int i) {
        C18524p.m3841c(context, "context");
        TrackingRequest.makeVastTrackingHttpRequest(this.f59530c, null, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
    }

    public void handleSkip(Context context, int i) {
        C18524p.m3841c(context, "context");
        TrackingRequest.makeVastTrackingHttpRequest(this.f59533f, null, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
    }

    public boolean hasCompanionAd() {
        return !getVastCompanionAdConfigs().isEmpty();
    }

    public boolean isRewarded() {
        return this.f59545r;
    }

    public void setClickThroughUrl(String str) {
        this.f59539l = str;
    }

    public void setCountdownTimerDuration(int i) {
        this.f59546s = i;
    }

    public void setCustomCloseIconUrl(String str) {
        String str2 = str;
        if (str == null) {
            str2 = this.f59550w;
        }
        this.f59550w = str2;
    }

    public void setCustomCtaText(String str) {
        String str2 = str;
        if (str == null) {
            str2 = this.f59548u;
        }
        this.f59548u = str2;
    }

    public void setCustomSkipText(String str) {
        String str2 = str;
        if (str == null) {
            str2 = this.f59549v;
        }
        this.f59549v = str2;
    }

    public void setDiskMediaFileUrl(String str) {
        this.f59541n = str;
    }

    public void setDspCreativeId(String str) {
        String str2 = str;
        if (str == null) {
            str2 = this.f59552y;
        }
        this.f59552y = str2;
    }

    public void setEnableClickExperiment(boolean z) {
        this.f59547t = z;
    }

    public void setNetworkMediaFileUrl(String str) {
        this.f59540m = str;
    }

    public void setPrivacyInformationIconClickthroughUrl(String str) {
        this.f59527A = str;
    }

    public void setPrivacyInformationIconImageUrl(String str) {
        String str2 = str;
        if (str == null) {
            str2 = this.f59553z;
        }
        this.f59553z = str2;
    }

    public void setRewarded(boolean z) {
        this.f59545r = z;
    }

    public void setSkipOffset(String str) {
        this.f59542o = str;
    }

    public void setVastIconConfig(VastIconConfig vastIconConfig) {
        this.f59544q = vastIconConfig;
    }

    public void setVideoViewabilityTracker(VideoViewabilityTracker videoViewabilityTracker) {
        VideoViewabilityTracker videoViewabilityTracker2 = videoViewabilityTracker;
        if (videoViewabilityTracker == null) {
            videoViewabilityTracker2 = this.f59551x;
        }
        this.f59551x = videoViewabilityTracker2;
    }

    public /* synthetic */ void toJson$28(C15965f c15965f, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        jsonWriter.beginObject();
        if (this != this.f59528a) {
            _optimizedjsonwriter.mo120b(jsonWriter, 69);
            VastVideoConfig_impressionTrackersTypeToken vastVideoConfig_impressionTrackersTypeToken = new VastVideoConfig_impressionTrackersTypeToken();
            List<VastTracker> list = this.f59528a;
            C21025a.m118a(c15965f, vastVideoConfig_impressionTrackersTypeToken, list).write(jsonWriter, list);
        }
        if (this != this.f59529b) {
            _optimizedjsonwriter.mo120b(jsonWriter, 85);
            VastVideoConfig_pauseTrackersTypeToken vastVideoConfig_pauseTrackersTypeToken = new VastVideoConfig_pauseTrackersTypeToken();
            List<VastTracker> list2 = this.f59529b;
            C21025a.m118a(c15965f, vastVideoConfig_pauseTrackersTypeToken, list2).write(jsonWriter, list2);
        }
        if (this != this.f59530c) {
            _optimizedjsonwriter.mo120b(jsonWriter, 70);
            VastVideoConfig_resumeTrackersTypeToken vastVideoConfig_resumeTrackersTypeToken = new VastVideoConfig_resumeTrackersTypeToken();
            List<VastTracker> list3 = this.f59530c;
            C21025a.m118a(c15965f, vastVideoConfig_resumeTrackersTypeToken, list3).write(jsonWriter, list3);
        }
        if (this != this.f59531d) {
            _optimizedjsonwriter.mo120b(jsonWriter, 96);
            VastVideoConfig_completeTrackersTypeToken vastVideoConfig_completeTrackersTypeToken = new VastVideoConfig_completeTrackersTypeToken();
            List<VastTracker> list4 = this.f59531d;
            C21025a.m118a(c15965f, vastVideoConfig_completeTrackersTypeToken, list4).write(jsonWriter, list4);
        }
        if (this != this.f59532e) {
            _optimizedjsonwriter.mo120b(jsonWriter, 30);
            VastVideoConfig_closeTrackersTypeToken vastVideoConfig_closeTrackersTypeToken = new VastVideoConfig_closeTrackersTypeToken();
            List<VastTracker> list5 = this.f59532e;
            C21025a.m118a(c15965f, vastVideoConfig_closeTrackersTypeToken, list5).write(jsonWriter, list5);
        }
        if (this != this.f59533f) {
            _optimizedjsonwriter.mo120b(jsonWriter, 81);
            VastVideoConfig_skipTrackersTypeToken vastVideoConfig_skipTrackersTypeToken = new VastVideoConfig_skipTrackersTypeToken();
            List<VastTracker> list6 = this.f59533f;
            C21025a.m118a(c15965f, vastVideoConfig_skipTrackersTypeToken, list6).write(jsonWriter, list6);
        }
        if (this != this.f59534g) {
            _optimizedjsonwriter.mo120b(jsonWriter, 23);
            VastVideoConfig_clickTrackersTypeToken vastVideoConfig_clickTrackersTypeToken = new VastVideoConfig_clickTrackersTypeToken();
            List<VastTracker> list7 = this.f59534g;
            C21025a.m118a(c15965f, vastVideoConfig_clickTrackersTypeToken, list7).write(jsonWriter, list7);
        }
        if (this != this.f59535h) {
            _optimizedjsonwriter.mo120b(jsonWriter, 38);
            VastVideoConfig_errorTrackersTypeToken vastVideoConfig_errorTrackersTypeToken = new VastVideoConfig_errorTrackersTypeToken();
            List<VastTracker> list8 = this.f59535h;
            C21025a.m118a(c15965f, vastVideoConfig_errorTrackersTypeToken, list8).write(jsonWriter, list8);
        }
        if (this != this.f59536i) {
            _optimizedjsonwriter.mo120b(jsonWriter, 40);
            VastVideoConfig_fractionalTrackersTypeToken vastVideoConfig_fractionalTrackersTypeToken = new VastVideoConfig_fractionalTrackersTypeToken();
            List<VastFractionalProgressTracker> list9 = this.f59536i;
            C21025a.m118a(c15965f, vastVideoConfig_fractionalTrackersTypeToken, list9).write(jsonWriter, list9);
        }
        if (this != this.f59537j) {
            _optimizedjsonwriter.mo120b(jsonWriter, 17);
            VastVideoConfig_absoluteTrackersTypeToken vastVideoConfig_absoluteTrackersTypeToken = new VastVideoConfig_absoluteTrackersTypeToken();
            List<VastAbsoluteProgressTracker> list10 = this.f59537j;
            C21025a.m118a(c15965f, vastVideoConfig_absoluteTrackersTypeToken, list10).write(jsonWriter, list10);
        }
        if (this != this.f59538k) {
            _optimizedjsonwriter.mo120b(jsonWriter, 52);
            VastVideoConfig_viewabilityVendorsTypeToken vastVideoConfig_viewabilityVendorsTypeToken = new VastVideoConfig_viewabilityVendorsTypeToken();
            Set<ViewabilityVendor> set = this.f59538k;
            C21025a.m118a(c15965f, vastVideoConfig_viewabilityVendorsTypeToken, set).write(jsonWriter, set);
        }
        if (this != this.f59539l) {
            _optimizedjsonwriter.mo120b(jsonWriter, 27);
            jsonWriter.value(this.f59539l);
        }
        if (this != this.f59540m) {
            _optimizedjsonwriter.mo120b(jsonWriter, 0);
            jsonWriter.value(this.f59540m);
        }
        if (this != this.f59541n) {
            _optimizedjsonwriter.mo120b(jsonWriter, 86);
            jsonWriter.value(this.f59541n);
        }
        if (this != this.f59542o) {
            _optimizedjsonwriter.mo120b(jsonWriter, 94);
            jsonWriter.value(this.f59542o);
        }
        if (this != this.f59543p) {
            _optimizedjsonwriter.mo120b(jsonWriter, 2);
            VastVideoConfigvastCompanionAdConfigsTypeToken vastVideoConfigvastCompanionAdConfigsTypeToken = new VastVideoConfigvastCompanionAdConfigsTypeToken();
            Set<VastCompanionAdConfig> set2 = this.f59543p;
            C21025a.m118a(c15965f, vastVideoConfigvastCompanionAdConfigsTypeToken, set2).write(jsonWriter, set2);
        }
        if (this != this.f59544q) {
            _optimizedjsonwriter.mo120b(jsonWriter, 56);
            VastIconConfig vastIconConfig = this.f59544q;
            C21025a.m117a(c15965f, VastIconConfig.class, vastIconConfig).write(jsonWriter, vastIconConfig);
        }
        _optimizedjsonwriter.mo120b(jsonWriter, 42);
        jsonWriter.value(this.f59545r);
        _optimizedjsonwriter.mo120b(jsonWriter, 73);
        jsonWriter.value(Integer.valueOf(this.f59546s));
        _optimizedjsonwriter.mo120b(jsonWriter, 49);
        jsonWriter.value(this.f59547t);
        if (this != this.f59548u) {
            _optimizedjsonwriter.mo120b(jsonWriter, 78);
            jsonWriter.value(this.f59548u);
        }
        if (this != this.f59549v) {
            _optimizedjsonwriter.mo120b(jsonWriter, 64);
            jsonWriter.value(this.f59549v);
        }
        if (this != this.f59550w) {
            _optimizedjsonwriter.mo120b(jsonWriter, 71);
            jsonWriter.value(this.f59550w);
        }
        if (this != this.f59551x) {
            _optimizedjsonwriter.mo120b(jsonWriter, 63);
            VideoViewabilityTracker videoViewabilityTracker = this.f59551x;
            C21025a.m117a(c15965f, VideoViewabilityTracker.class, videoViewabilityTracker).write(jsonWriter, videoViewabilityTracker);
        }
        if (this != this.f59552y) {
            _optimizedjsonwriter.mo120b(jsonWriter, 5);
            jsonWriter.value(this.f59552y);
        }
        if (this != this.f59553z) {
            _optimizedjsonwriter.mo120b(jsonWriter, 41);
            jsonWriter.value(this.f59553z);
        }
        if (this != this.f59527A) {
            _optimizedjsonwriter.mo120b(jsonWriter, 48);
            jsonWriter.value(this.f59527A);
        }
        jsonWriter.endObject();
    }

    public String toJsonString() {
        String m7962b = new C15972g().m7959a(new C16822a()).m7960a().m7962b(this);
        C18524p.m3849a((Object) m7962b, "gson.toJson(this@VastVideoConfig)");
        return m7962b;
    }
}
