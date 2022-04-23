package com.callapp.contacts.activity.marketplace.videoRingtone;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.aa;
import androidx.lifecycle.ab;
import androidx.lifecycle.u;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.activity.crop.ChooseImageSourceDialogListener;
import com.callapp.contacts.activity.marketplace.PersonalStoreItemHelper;
import com.callapp.contacts.activity.marketplace.videoRingtone.AssignPersonalStoreItemAdapter;
import com.callapp.contacts.activity.marketplace.videoRingtone.AssignPersonalStoreItemDialogFragment;
import com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragment;
import com.callapp.contacts.activity.marketplace.videoRingtone.SnapOnScrollListener;
import com.callapp.contacts.loader.PersonalStoreItemDataManager;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData_;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUserData;
import com.callapp.contacts.popup.ChooseImageSourceDialog;
import com.callapp.contacts.popup.ShareVideoRingtonePopup;
import com.callapp.contacts.popup.contact.CallAppDialogEvents;
import com.callapp.contacts.popup.contact.DialogMessageWithTopImageNew;
import com.callapp.contacts.popup.contact.SimpleProgressDialog;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.IoUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.contacts.util.video.CallAppTransformation;
import com.callapp.contacts.util.video.TrimmerActivity;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import com.explorestack.iab.vast.VastError;
import com.linkedin.android.litr.e;
import com.shehabic.droppy.DroppyMenuPopup;
import com.shehabic.droppy.b;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.Future;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.a.n;
import kotlin.b.a;
import kotlin.h;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.v;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(bv = {1, 0, 3}, d1 = {"��þ\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018�� ¿\u00012\u00020\u00012\u00020\u00022\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00032\u00020\u00062\u00020\u0007:\u0002¿\u0001B\u0005¢\u0006\u0002\u0010\bJ$\u0010u\u001a\u00020v2\u0006\u0010w\u001a\u00020/2\u0006\u0010x\u001a\u00020\n2\n\b\u0002\u0010y\u001a\u0004\u0018\u00010\nH\u0002J\u0010\u0010z\u001a\u00020v2\u0006\u0010x\u001a\u00020\nH\u0002J\n\u0010{\u001a\u0004\u0018\u00010\"H\u0002J\b\u0010|\u001a\u0004\u0018\u00010\"J\b\u0010}\u001a\u0004\u0018\u00010\nJ\b\u0010~\u001a\u0004\u0018\u00010\u0005J\u0011\u0010\u007f\u001a\u0004\u0018\u00010\\2\u0007\u0010\u0080\u0001\u001a\u00020/J\u0007\u0010\u0081\u0001\u001a\u00020vJ'\u0010\u0082\u0001\u001a\u00020v2\u0007\u0010\u0083\u0001\u001a\u00020/2\u0007\u0010\u0084\u0001\u001a\u00020/2\n\u0010\u0085\u0001\u001a\u0005\u0018\u00010\u0086\u0001H\u0016J\u0012\u0010\u0087\u0001\u001a\u00020v2\u0007\u0010\u0088\u0001\u001a\u00020/H\u0016J\u0013\u0010\u0089\u0001\u001a\u00020v2\b\u0010\u008a\u0001\u001a\u00030\u008b\u0001H\u0016J%\u0010\u008c\u0001\u001a\u00020v2\u0007\u0010\u008d\u0001\u001a\u00020\n2\u0011\u0010\u008e\u0001\u001a\f\u0012\u0005\u0012\u00030\u0090\u0001\u0018\u00010\u008f\u0001H\u0016J\u0018\u0010\u0091\u0001\u001a\u00020v2\r\u0010\u0092\u0001\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0016J%\u0010\u0093\u0001\u001a\u00020v2\u0007\u0010\u008d\u0001\u001a\u00020\n2\u0011\u0010\u008e\u0001\u001a\f\u0012\u0005\u0012\u00030\u0090\u0001\u0018\u00010\u008f\u0001H\u0016J\u001b\u0010\u0094\u0001\u001a\u00020v2\u0007\u0010\u0095\u0001\u001a\u00020\\2\u0007\u0010\u0096\u0001\u001a\u00020\nH\u0016J\u0015\u0010\u0097\u0001\u001a\u00020v2\n\u0010\u0098\u0001\u001a\u0005\u0018\u00010\u0099\u0001H\u0016J-\u0010\u009a\u0001\u001a\u0004\u0018\u00010\\2\b\u0010\u009b\u0001\u001a\u00030\u009c\u00012\n\u0010\u009d\u0001\u001a\u0005\u0018\u00010\u009e\u00012\n\u0010\u0098\u0001\u001a\u0005\u0018\u00010\u0099\u0001H\u0016J\u0012\u0010\u009f\u0001\u001a\u00020v2\u0007\u0010\u0092\u0001\u001a\u00020\u0005H\u0016J\t\u0010 \u0001\u001a\u00020vH\u0016J\t\u0010¡\u0001\u001a\u00020vH\u0016J\u0012\u0010¢\u0001\u001a\u00020v2\u0007\u0010\u0092\u0001\u001a\u00020\u0005H\u0016J1\u0010£\u0001\u001a\u00020v2\u0007\u0010\u008d\u0001\u001a\u00020\n2\n\u0010¤\u0001\u001a\u0005\u0018\u00010¥\u00012\u0011\u0010\u008e\u0001\u001a\f\u0012\u0005\u0012\u00030\u0090\u0001\u0018\u00010\u008f\u0001H\u0016J\u001c\u0010¦\u0001\u001a\u00020v2\u0007\u0010\u008d\u0001\u001a\u00020\n2\b\u0010§\u0001\u001a\u00030¨\u0001H\u0016J\u0012\u0010©\u0001\u001a\u00020v2\u0007\u0010\u0092\u0001\u001a\u00020\u0005H\u0016J\u0012\u0010ª\u0001\u001a\u00020v2\u0007\u0010\u0080\u0001\u001a\u00020/H\u0016J\u0012\u0010«\u0001\u001a\u00020v2\u0007\u0010\u008d\u0001\u001a\u00020\nH\u0016J\u0007\u0010¬\u0001\u001a\u00020vJ\u0007\u0010\u00ad\u0001\u001a\u00020vJ>\u0010®\u0001\u001a\u00020v2\u0007\u0010¯\u0001\u001a\u00020\u00162\u000b\b\u0002\u0010°\u0001\u001a\u0004\u0018\u00010\n2\u000b\b\u0002\u0010±\u0001\u001a\u0004\u0018\u00010\n2\u0007\u0010\u0088\u0001\u001a\u00020/2\t\b\u0002\u0010²\u0001\u001a\u00020\u0016J\u0011\u0010³\u0001\u001a\u00020v2\u0006\u0010x\u001a\u00020\nH\u0002J\u001a\u0010´\u0001\u001a\u00020v2\u0007\u0010µ\u0001\u001a\u00020\"2\u0006\u0010w\u001a\u00020/H\u0002J&\u0010¶\u0001\u001a\u00020v2\u0007\u0010·\u0001\u001a\u00020\"2\t\u0010¸\u0001\u001a\u0004\u0018\u00010\n2\u0007\u0010¹\u0001\u001a\u00020/H\u0002J@\u0010º\u0001\u001a\u00020v2#\b\u0002\u0010»\u0001\u001a\u001c\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010¼\u0001j\r\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u0001`½\u00012\u0007\u0010¾\u0001\u001a\u00020\n2\u0007\u0010\u0083\u0001\u001a\u00020/H\u0002R\u0014\u0010\t\u001a\u00020\nX\u0086D¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001c\u0010!\u001a\u0004\u0018\u00010\"X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001c\u0010'\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b(\u0010\f\"\u0004\b)\u0010*R\u001c\u0010+\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b,\u0010\f\"\u0004\b-\u0010*R\u001a\u0010.\u001a\u00020/X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\u001a\u00104\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b4\u0010\u0018\"\u0004\b5\u0010\u001aR\u001c\u00106\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b7\u00108\"\u0004\b9\u0010:R\u001a\u0010;\u001a\u00020<X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\u001c\u0010A\u001a\u0004\u0018\u00010BX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bC\u0010D\"\u0004\bE\u0010FR\u000e\u0010G\u001a\u00020HX\u0082.¢\u0006\u0002\n��R\u001a\u0010I\u001a\u00020<X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bJ\u0010>\"\u0004\bK\u0010@R\u001c\u0010L\u001a\u0004\u0018\u00010<X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bM\u0010>\"\u0004\bN\u0010@R\u001c\u0010O\u001a\u0004\u0018\u00010PX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bQ\u0010R\"\u0004\bS\u0010TR\u001a\u0010U\u001a\u00020VX\u0086.¢\u0006\u000e\n��\u001a\u0004\bW\u0010X\"\u0004\bY\u0010ZR\u001c\u0010[\u001a\u0004\u0018\u00010\\X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b]\u0010^\"\u0004\b_\u0010`R\u001b\u0010a\u001a\u00020b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\be\u0010f\u001a\u0004\bc\u0010dR\u001c\u0010g\u001a\u0004\u0018\u00010hX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bi\u0010j\"\u0004\bk\u0010lR\u001c\u0010m\u001a\u0004\u0018\u00010nX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bo\u0010p\"\u0004\bq\u0010rR\u000e\u0010s\u001a\u00020tX\u0082.¢\u0006\u0002\n��¨\u0006À\u0001"}, d2 = {"Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;", "Landroidx/fragment/app/Fragment;", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$OnItemClickListener;", "Landroidx/lifecycle/Observer;", "", "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/OnSnapPositionChangeListener;", "Lcom/linkedin/android/litr/TransformationListener;", "()V", "COVER_FILE_NAME", "", "getCOVER_FILE_NAME", "()Ljava/lang/String;", "assignPersonalStoreItemAdapter", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;", "getAssignPersonalStoreItemAdapter", "()Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;", "setAssignPersonalStoreItemAdapter", "(Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;)V", "assignPersonalStoreItemDialogFragment", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment;", "autoShareVideo", "", "getAutoShareVideo", "()Z", "setAutoShareVideo", "(Z)V", "chooseImageSourceDialogListener", "Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;", "getChooseImageSourceDialogListener", "()Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;", "setChooseImageSourceDialogListener", "(Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;)V", "chooseVideoOnStart", "Landroid/net/Uri;", "getChooseVideoOnStart", "()Landroid/net/Uri;", "setChooseVideoOnStart", "(Landroid/net/Uri;)V", "contactIdChooseVideoOnStart", "getContactIdChooseVideoOnStart", "setContactIdChooseVideoOnStart", "(Ljava/lang/String;)V", "coverFilePath", "getCoverFilePath", "setCoverFilePath", "currentAssignFlow", "", "getCurrentAssignFlow", "()I", "setCurrentAssignFlow", "(I)V", "isInterrupted", "setInterrupted", "lastAddedPersonalStoreItemData", "getLastAddedPersonalStoreItemData", "()Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;", "setLastAddedPersonalStoreItemData", "(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;)V", "loadImageProgressDialog", "Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;", "getLoadImageProgressDialog", "()Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;", "setLoadImageProgressDialog", "(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V", "personalStoreItemDelegate", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragmentDelegate;", "getPersonalStoreItemDelegate", "()Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragmentDelegate;", "setPersonalStoreItemDelegate", "(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragmentDelegate;)V", "personalStoreItemType", "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;", "pickVideoProgressDialog", "getPickVideoProgressDialog", "setPickVideoProgressDialog", "progressDialog", "getProgressDialog", "setProgressDialog", "randomUUIDForFileExtansion", "Ljava/util/UUID;", "getRandomUUIDForFileExtansion", "()Ljava/util/UUID;", "setRandomUUIDForFileExtansion", "(Ljava/util/UUID;)V", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "getRecyclerView", "()Landroidx/recyclerview/widget/RecyclerView;", "setRecyclerView", "(Landroidx/recyclerview/widget/RecyclerView;)V", "rootView", "Landroid/view/View;", "getRootView", "()Landroid/view/View;", "setRootView", "(Landroid/view/View;)V", "shareVideoTempFile", "Ljava/io/File;", "getShareVideoTempFile", "()Ljava/io/File;", "shareVideoTempFile$delegate", "Lkotlin/Lazy;", "snapOnScrollListener", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener;", "getSnapOnScrollListener", "()Lcom/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener;", "setSnapOnScrollListener", "(Lcom/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener;)V", "transformationBuilder", "Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;", "getTransformationBuilder", "()Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;", "setTransformationBuilder", "(Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;)V", "viewModel", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemViewModel;", "afterSourceManifolation", "", "flow", "itemUrl", "contactIdToAdd", "assignToContacts", "getFileUri", "getSelectedItemUri", "getSelectedItemUrl", "getSelectedStoreItemUrlData", "getViewAtPosition", "position", "notifyDataSetChanged", "onActivityResult", "requestCode", "resultCode", "data", "Landroid/content/Intent;", "onAddClicked", "flowType", "onAttach", "context", "Landroid/content/Context;", "onCancelled", "id", "trackTransformationInfos", "", "Lcom/linkedin/android/litr/analytics/TrackTransformationInfo;", "onChanged", "personalStoreItemUrlData", "onCompleted", "onContactsSelected", "view", "names", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onDeleteClicked", "onDestroy", "onDetach", "onEditContactClicked", "onError", "cause", "", "onProgress", EventConstants.PROGRESS, "", "onShareClicked", "onSnapPositionChange", "onStarted", "onSwipeLeft", "onSwipeRight", "showChoosePersonalStoreItemDialog", "inflateFooter", "updatePersonalStoreItem", Constants.EXTRA_CONTACT_ID, "inUpdateMode", "startAssignContactOrAllPopUp", "startPortraitModePopUp", "videoUri", "startTrimActivity", "uriData", "updateItemUrl", "assignFlow", "startVideoRingtoneFragment", "contactsIds", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "selectedVideo", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment.class */
public final class PersonalStoreItemFragment extends Fragment implements u<List<? extends PersonalStoreItemUrlData>>, AssignPersonalStoreItemAdapter.OnItemClickListener, OnSnapPositionChangeListener, e {

    /* renamed from: b  reason: collision with root package name */
    public static final Companion f13358b = new Companion(null);
    private static int y = -1;

    /* renamed from: a  reason: collision with root package name */
    public RecyclerView f13359a;

    /* renamed from: c  reason: collision with root package name */
    private PersonalStoreItemUrlData.PersonalStoreItemType f13360c;

    /* renamed from: d  reason: collision with root package name */
    private View f13361d;
    private AssignPersonalStoreItemAdapter e;
    private PersonalStoreItemFragmentDelegate f;
    private ChooseImageSourceDialogListener g;
    private UUID h;
    private boolean k;
    private SnapOnScrollListener l;
    private PersonalStoreItemUrlData m;
    private String n;
    private Uri o;
    private boolean p;
    private SimpleProgressDialog q;
    private String r;
    private AssignPersonalStoreItemDialogFragment v;
    private CallAppTransformation.TransformationBuilder w;
    private PersonalStoreItemViewModel x;
    private SimpleProgressDialog i = new SimpleProgressDialog();
    private SimpleProgressDialog j = new SimpleProgressDialog();
    private final String s = "callAppCustomCover";
    private int t = -1;
    private final Lazy u = h.a(PersonalStoreItemFragment$shareVideoTempFile$2.f13385a);

    @Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u001a\u0010\f\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0015"}, d2 = {"Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$Companion;", "", "()V", "PERSONAL_STORE_ITEM_FRAGMENT_TAG", "", "PERSONAL_STORE_URL_DATA_ARGUMENT", "REQUEST_CANCELED", "", "REQUEST_VIDEO_CAPTURE", "REQUEST_VIDEO_PICK", "SHARE_RESULT", "SHARE_VIDEO_NAME", "selectedPersonalStoreItemIndex", "getSelectedPersonalStoreItemIndex", "()I", "setSelectedPersonalStoreItemIndex", "(I)V", "newInstance", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;", "personalType", "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static PersonalStoreItemFragment a(PersonalStoreItemUrlData.PersonalStoreItemType personalType) {
            p.d(personalType, "personalType");
            PersonalStoreItemFragment personalStoreItemFragment = new PersonalStoreItemFragment();
            Bundle bundle = new Bundle();
            bundle.putSerializable("PERSONAL_STORE_URL_DATA_ARGUMENT", personalType);
            personalStoreItemFragment.setArguments(bundle);
            return personalStoreItemFragment;
        }

        public final int getSelectedPersonalStoreItemIndex() {
            return PersonalStoreItemFragment.y;
        }

        public final void setSelectedPersonalStoreItemIndex(int i) {
            PersonalStoreItemFragment.y = i;
        }
    }

    public static final /* synthetic */ PersonalStoreItemUrlData.PersonalStoreItemType a(PersonalStoreItemFragment personalStoreItemFragment) {
        PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType = personalStoreItemFragment.f13360c;
        if (personalStoreItemType == null) {
            p.a("personalStoreItemType");
        }
        return personalStoreItemType;
    }

    private final void a(int i, String str, String str2) {
        PersonalStoreItemFragmentDelegate personalStoreItemFragmentDelegate;
        if (i == 0) {
            PersonalStoreItemDataManager.Companion companion = PersonalStoreItemDataManager.f14492a;
            ArrayList<String> arrayList = new ArrayList<>();
            PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType = this.f13360c;
            if (personalStoreItemType == null) {
                p.a("personalStoreItemType");
            }
            this.m = companion.a(arrayList, str, 0, personalStoreItemType);
            d(str);
        } else if (i == 1) {
            PersonalStoreItemDataManager.Companion companion2 = PersonalStoreItemDataManager.f14492a;
            ArrayList<String> arrayList2 = new ArrayList<>();
            PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType2 = this.f13360c;
            if (personalStoreItemType2 == null) {
                p.a("personalStoreItemType");
            }
            this.m = companion2.a(arrayList2, str, 0, personalStoreItemType2);
            a((ArrayList<String>) null, str, 100);
        } else if (i == 2) {
            PersonalStoreItemDataManager.Companion companion3 = PersonalStoreItemDataManager.f14492a;
            PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType3 = this.f13360c;
            if (personalStoreItemType3 == null) {
                p.a("personalStoreItemType");
            }
            this.m = companion3.a("666666", str, Integer.MAX_VALUE, personalStoreItemType3);
        } else if (i == 3) {
            d();
            PersonalStoreItemUrlData selectedStoreItemUrlData = getSelectedStoreItemUrlData();
            if (selectedStoreItemUrlData != null && (personalStoreItemFragmentDelegate = this.f) != null) {
                personalStoreItemFragmentDelegate.a(selectedStoreItemUrlData);
            }
        } else if (i == 4 && str2 != null) {
            PersonalStoreItemDataManager.Companion companion4 = PersonalStoreItemDataManager.f14492a;
            PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType4 = this.f13360c;
            if (personalStoreItemType4 == null) {
                p.a("personalStoreItemType");
            }
            this.m = companion4.a(str2, str, 1, personalStoreItemType4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(final Uri uri, final String str, final int i) {
        PopupManager.get().a(getContext(), this.i);
        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragment$startTrimActivity$1
            @Override // java.lang.Runnable
            public final void run() {
                String a2 = IoUtils.a(uri, "CallScreenThemeTemp");
                if (!PersonalStoreItemFragment.this.isInterrupted()) {
                    Intent intent = new Intent(PersonalStoreItemFragment.this.getContext(), TrimmerActivity.class);
                    intent.putExtra("EXTRA_VIDEO_PATH", a2);
                    String uuid = StringUtils.b((CharSequence) str) ? str : UUID.randomUUID().toString();
                    intent.putExtra("EXTRA_ASSIGN_FLOW", i);
                    intent.putExtra("EXTRA_VIDEO_FILE_NAME", uuid);
                    ChooseImageSourceDialogListener chooseImageSourceDialogListener = PersonalStoreItemFragment.this.getChooseImageSourceDialogListener();
                    intent.putExtra("EXTRA_CONTACT_ID", chooseImageSourceDialogListener != null ? chooseImageSourceDialogListener.getContactId() : null);
                    PersonalStoreItemFragment.this.startActivityForResult(intent, 342);
                }
            }
        });
    }

    public static final /* synthetic */ void a(final PersonalStoreItemFragment personalStoreItemFragment, final Uri uri, final int i) {
        DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder dialogMessageWithTopImageBuilder = new DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder();
        SpannableString spannableString = new SpannableString(Activities.getString(2131887338));
        int color = ThemeUtils.getColor(2131099784);
        Float valueOf = Float.valueOf(14.0f);
        DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder a2 = DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.a(DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.a(dialogMessageWithTopImageBuilder, spannableString, null, null, null, null, Integer.valueOf(color), valueOf, new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragment$startPortraitModePopUp$dialogMessageWithTopImageNew$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PersonalStoreItemFragment personalStoreItemFragment2 = PersonalStoreItemFragment.this;
                Uri uri2 = uri;
                ChooseImageSourceDialogListener chooseImageSourceDialogListener = personalStoreItemFragment2.getChooseImageSourceDialogListener();
                personalStoreItemFragment2.a(uri2, chooseImageSourceDialogListener != null ? chooseImageSourceDialogListener.getUpdatePersonalStoreItemUrl() : null, i);
            }
        }, true, 21, true, false, 40, 0, 0, null, null, 256030), new SpannableString(Activities.getString(2131886208)), null, null, null, null, Integer.valueOf(ThemeUtils.getColor(2131099784)), valueOf, new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragment$startPortraitModePopUp$dialogMessageWithTopImageNew$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PersonalStoreItemFragment personalStoreItemFragment2 = PersonalStoreItemFragment.this;
                ChooseImageSourceDialogListener chooseImageSourceDialogListener = personalStoreItemFragment2.getChooseImageSourceDialogListener();
                PersonalStoreItemFragment.a(personalStoreItemFragment2, false, chooseImageSourceDialogListener != null ? chooseImageSourceDialogListener.getUpdatePersonalStoreItemUrl() : null, null, i, false, 20);
            }
        }, true, 19, true, 40, 0, 0, null, null, 256030);
        a2.f15496a = Float.valueOf(0.5f);
        PopupManager.get().a(personalStoreItemFragment.getContext(), DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.a(DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.a(DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.a(DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.b(a2, 2131231847), 80, 40, 40, 40, false, 67), Activities.getString(2131887101), Integer.valueOf(ThemeUtils.getColor(2131100140)), true, 40, 228), Activities.getString(2131888119), Integer.valueOf(ThemeUtils.getColor(2131100140)), 15).a());
    }

    public static /* synthetic */ void a(PersonalStoreItemFragment personalStoreItemFragment, boolean z, String str, String str2, int i, boolean z2, int i2) {
        if ((i2 & 2) != 0) {
            str = null;
        }
        if ((i2 & 4) != 0) {
            str2 = null;
        }
        if ((i2 & 16) != 0) {
            z2 = false;
        }
        personalStoreItemFragment.a(z, str, str2, i, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(ArrayList<String> arrayList, String str, int i) {
        FragmentActivity activity;
        FragmentManager supportFragmentManager;
        AssignPersonalStoreItemDialogFragment.Companion companion = AssignPersonalStoreItemDialogFragment.f13340c;
        PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType = this.f13360c;
        if (personalStoreItemType == null) {
            p.a("personalStoreItemType");
        }
        AssignPersonalStoreItemDialogFragment a2 = AssignPersonalStoreItemDialogFragment.Companion.a(arrayList, str, i, personalStoreItemType);
        this.v = a2;
        if (a2 != null && (activity = getActivity()) != null && (supportFragmentManager = activity.getSupportFragmentManager()) != null) {
            a2.a(supportFragmentManager, AssignPersonalStoreItemDialogFragment.f13340c.getTAG());
        }
    }

    private void a(boolean z, String str, String str2, int i, boolean z2) {
        ChooseImageSourceDialog chooseImageSourceDialog;
        String str3;
        PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType = this.f13360c;
        if (personalStoreItemType == null) {
            p.a("personalStoreItemType");
        }
        ChooseImageSourceDialog.ImageSourceType imageSourceType = personalStoreItemType == PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE ? ChooseImageSourceDialog.ImageSourceType.VIDEO : ChooseImageSourceDialog.ImageSourceType.IMAGE;
        if (z) {
            View inflate = getLayoutInflater().inflate(2131558604, (ViewGroup) null);
            PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType2 = this.f13360c;
            if (personalStoreItemType2 == null) {
                p.a("personalStoreItemType");
            }
            if (personalStoreItemType2 == PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE) {
                str3 = Activities.getString(2131888119);
                p.b(str3, "Activities.getString(R.string.upload_portrait)");
            } else {
                str3 = Activities.getString(2131888118);
                p.b(str3, "Activities.getString(R.string.upload_landscape)");
            }
            PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType3 = this.f13360c;
            if (personalStoreItemType3 == null) {
                p.a("personalStoreItemType");
            }
            int i2 = personalStoreItemType3 == PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE ? 2131231847 : 2131231998;
            View findViewById = inflate.findViewById(2131362856);
            Objects.requireNonNull(findViewById, "null cannot be cast to non-null type android.widget.TextView");
            ((TextView) findViewById).setText(str3);
            View findViewById2 = inflate.findViewById(2131362856);
            Objects.requireNonNull(findViewById2, "null cannot be cast to non-null type android.widget.TextView");
            ((TextView) findViewById2).setTextColor(ThemeUtils.getColor(2131100108));
            View findViewById3 = inflate.findViewById(2131362857);
            Objects.requireNonNull(findViewById3, "null cannot be cast to non-null type android.view.View");
            findViewById3.setBackgroundColor(ThemeUtils.getColor(2131099891));
            View findViewById4 = inflate.findViewById(2131362855);
            Objects.requireNonNull(findViewById4, "null cannot be cast to non-null type android.widget.ImageView");
            ((ImageView) findViewById4).setImageResource(i2);
            chooseImageSourceDialog = new ChooseImageSourceDialog(inflate, imageSourceType);
        } else {
            chooseImageSourceDialog = new ChooseImageSourceDialog(imageSourceType);
        }
        if (this.g == null) {
            this.g = new ChooseImageSourceDialogListener(this);
        }
        ChooseImageSourceDialogListener chooseImageSourceDialogListener = this.g;
        if (chooseImageSourceDialogListener != null) {
            chooseImageSourceDialogListener.setFlowType(i);
        }
        ChooseImageSourceDialogListener chooseImageSourceDialogListener2 = this.g;
        if (chooseImageSourceDialogListener2 != null) {
            chooseImageSourceDialogListener2.setUpdatePersonalStoreItemUrl(str);
        }
        ChooseImageSourceDialogListener chooseImageSourceDialogListener3 = this.g;
        if (chooseImageSourceDialogListener3 != null) {
            chooseImageSourceDialogListener3.setContactId(str2);
        }
        PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType4 = this.f13360c;
        if (personalStoreItemType4 == null) {
            p.a("personalStoreItemType");
        }
        if (personalStoreItemType4 == PersonalStoreItemUrlData.PersonalStoreItemType.COVER) {
            if (!z2) {
                this.h = null;
                this.r = null;
            }
            ChooseImageSourceDialogListener chooseImageSourceDialogListener4 = this.g;
            if (chooseImageSourceDialogListener4 != null) {
                chooseImageSourceDialogListener4.setCameraPhotoFile(getFileUri());
            }
        }
        chooseImageSourceDialog.setListener(this.g);
        PopupManager.get().a(getContext(), chooseImageSourceDialog);
    }

    private void d() {
        ImageView imageView;
        AssignPersonalStoreItemAdapter assignPersonalStoreItemAdapter;
        PersonalStoreItemUrlData itemAtPosition;
        String personalStoreItemUrl;
        int i = y;
        if (i >= 0) {
            View viewAtPosition = getViewAtPosition(i);
            if (!(viewAtPosition == null || (imageView = (ImageView) viewAtPosition.findViewById(2131364509)) == null || (assignPersonalStoreItemAdapter = this.e) == null || (itemAtPosition = assignPersonalStoreItemAdapter.getItemAtPosition(y)) == null || (personalStoreItemUrl = itemAtPosition.getPersonalStoreItemUrl()) == null || this.e == null)) {
                Context requireContext = requireContext();
                p.b(requireContext, "requireContext()");
                AssignPersonalStoreItemAdapter.a(requireContext, imageView, personalStoreItemUrl);
            }
            AssignPersonalStoreItemAdapter assignPersonalStoreItemAdapter2 = this.e;
            if (assignPersonalStoreItemAdapter2 != null) {
                assignPersonalStoreItemAdapter2.notifyItemChanged(y);
            }
        }
    }

    private final void d(final String str) {
        String str2;
        PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType = this.f13360c;
        if (personalStoreItemType == null) {
            p.a("personalStoreItemType");
        }
        if (personalStoreItemType == PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE) {
            str2 = Activities.getString(2131887411);
            p.b(str2, "Activities.getString(R.s…ease_choose_assign_video)");
        } else {
            str2 = Activities.getString(2131887410);
            p.b(str2, "Activities.getString(R.s…ease_choose_assign_cover)");
        }
        PopupManager.get().a(getContext(), DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.a(DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.a(DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.a(DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.a(DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.a(new DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder(), new SpannableString(Activities.getString(2131886268)), Integer.valueOf(ThemeUtils.getColor(2131099784)), 2131232141, null, null, Integer.valueOf(ThemeUtils.getColor(2131100228)), null, new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragment$startAssignContactOrAllPopUp$dialogMessageWithTopImageNew$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (PersonalStoreItemFragment.a(PersonalStoreItemFragment.this) == PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE) {
                    AnalyticsManager.get().a(Constants.PERSONAL_STORE_ITEM, "ClickAssignAll", PersonalStoreItemHelper.a(PersonalStoreItemFragment.a(PersonalStoreItemFragment.this)));
                    PersonalStoreItemFragment.this.setAutoShareVideo(true);
                }
                PersonalStoreItemFragment.this.setLastAddedPersonalStoreItemData(PersonalStoreItemDataManager.f14492a.a("666666", str, Integer.MAX_VALUE, PersonalStoreItemFragment.a(PersonalStoreItemFragment.this)));
            }
        }, false, null, true, 40, 0, 15, null, null, 224088), new SpannableString(Activities.getString(2131886269)), Integer.valueOf(ThemeUtils.getColor(2131099784)), 2131232141, null, null, Integer.valueOf(ThemeUtils.getColor(2131100228)), null, new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragment$startAssignContactOrAllPopUp$dialogMessageWithTopImageNew$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PersonalStoreItemFragment.this.a((ArrayList<String>) null, str, 100);
            }
        }, false, null, true, false, 40, 15, 0, null, null, 240472), 30, 30, 20, 20, false, 67), Activities.getString(2131887409), Integer.valueOf(ThemeUtils.getColor(2131100140)), true, 0, 244), str2, Integer.valueOf(ThemeUtils.getColor(2131100140)), 15).a());
    }

    private final Uri getFileUri() {
        String str;
        if (this.r == null) {
            if (this.h == null) {
                this.h = UUID.randomUUID();
            }
            if (getContext() != null) {
                File c2 = IoUtils.c("CallAppMedia");
                String str2 = this.s;
                str = new File(c2, str2 + this.h).getPath();
            } else {
                str = null;
            }
            this.r = str;
        }
        return IoUtils.a(CallAppApplication.get(), new File(this.r));
    }

    public final void a() {
        int i = y + 1;
        AssignPersonalStoreItemAdapter assignPersonalStoreItemAdapter = this.e;
        Integer valueOf = assignPersonalStoreItemAdapter != null ? Integer.valueOf(assignPersonalStoreItemAdapter.getItemCount()) : null;
        p.a(valueOf);
        if (i < valueOf.intValue()) {
            RecyclerView recyclerView = this.f13359a;
            if (recyclerView == null) {
                p.a("recyclerView");
            }
            recyclerView.d(i);
        }
    }

    @Override // com.callapp.contacts.activity.marketplace.videoRingtone.OnSnapPositionChangeListener
    public final void a(int i) {
        PersonalStoreItemFragmentDelegate personalStoreItemFragmentDelegate;
        y = i;
        AssignPersonalStoreItemAdapter assignPersonalStoreItemAdapter = this.e;
        PersonalStoreItemUrlData itemAtPosition = assignPersonalStoreItemAdapter != null ? assignPersonalStoreItemAdapter.getItemAtPosition(i) : null;
        if (itemAtPosition != null && (personalStoreItemFragmentDelegate = this.f) != null) {
            personalStoreItemFragmentDelegate.a(itemAtPosition);
        }
    }

    @Override // com.callapp.contacts.activity.marketplace.videoRingtone.AssignPersonalStoreItemAdapter.OnItemClickListener
    public final void a(View view, String names) {
        p.d(view, "view");
        p.d(names, "names");
        DroppyMenuPopup.a aVar = new DroppyMenuPopup.a(getContext(), view);
        b bVar = new b(2131558975);
        View a2 = bVar.a(getContext());
        Objects.requireNonNull(a2, "null cannot be cast to non-null type android.widget.TextView");
        TextView textView = (TextView) a2;
        textView.setText(names);
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        DroppyMenuPopup droppyMenuPopup = aVar.a(bVar).c();
        droppyMenuPopup.b();
        p.b(droppyMenuPopup, "droppyMenuPopup");
        View a3 = droppyMenuPopup.a();
        if (a3 != null) {
            ViewUtils.b(a3, 2131230831, ThemeUtils.getColor(2131099686), ThemeUtils.getColor(2131099891), (int) Activities.a(2.0f));
        }
    }

    @Override // com.callapp.contacts.activity.marketplace.videoRingtone.AssignPersonalStoreItemAdapter.OnItemClickListener
    public final void a(final PersonalStoreItemUrlData personalStoreItemUrlData) {
        p.d(personalStoreItemUrlData, "personalStoreItemUrlData");
        DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder dialogMessageWithTopImageBuilder = new DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder();
        SpannableString spannableString = new SpannableString(Activities.getString(2131888248));
        int color = ThemeUtils.getColor(2131099784);
        Float valueOf = Float.valueOf(14.0f);
        PopupManager.get().a(getContext(), DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.a(DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.a(DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.a(DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.a(dialogMessageWithTopImageBuilder, spannableString, null, null, null, null, Integer.valueOf(color), valueOf, new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragment$onDeleteClicked$areYouSureDialog$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PersonalStoreItemFragment.Companion companion = PersonalStoreItemFragment.f13358b;
                companion.setSelectedPersonalStoreItemIndex(companion.getSelectedPersonalStoreItemIndex() - 1);
                PersonalStoreItemFragment personalStoreItemFragment = PersonalStoreItemFragment.this;
                personalStoreItemFragment.setLastAddedPersonalStoreItemData(personalStoreItemFragment.getSelectedStoreItemUrlData());
                PersonalStoreItemDataManager.Companion companion2 = PersonalStoreItemDataManager.f14492a;
                String personalStoreItemUrl = personalStoreItemUrlData.getPersonalStoreItemUrl();
                p.b(personalStoreItemUrl, "personalStoreItemUrlData.personalStoreItemUrl");
                PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType = PersonalStoreItemFragment.a(PersonalStoreItemFragment.this);
                p.d(personalStoreItemUrl, "personalStoreItemUrl");
                p.d(personalStoreItemType, "personalStoreItemType");
                CallAppApplication callAppApplication = CallAppApplication.get();
                p.b(callAppApplication, "CallAppApplication.get()");
                PersonalStoreItemUrlData personalStoreItemUrlData2 = (PersonalStoreItemUrlData) callAppApplication.getObjectBoxStore().d(PersonalStoreItemUrlData.class).e().a(PersonalStoreItemUrlData_.personalStoreItemUrl, personalStoreItemUrl).a(PersonalStoreItemUrlData_.personalStoreItemType, personalStoreItemType.ordinal()).a().a();
                if (personalStoreItemUrlData2 != null) {
                    PersonalStoreItemDataManager.Companion.a(personalStoreItemUrlData2, personalStoreItemType);
                }
            }
        }, true, 17, true, false, 40, 0, 0, null, null, 256030), new SpannableString(Activities.getString(2131887301)), null, null, null, null, Integer.valueOf(ThemeUtils.getColor(2131099784)), valueOf, PersonalStoreItemFragment$onDeleteClicked$areYouSureDialog$2.f13384a, true, 17, true, 40, 0, 0, null, null, 256030), 30, 30, 20, 20, false, 67), Activities.getString(2131887101), Integer.valueOf(ThemeUtils.getColor(2131100140)), true, 0, 244).a());
    }

    @Override // com.linkedin.android.litr.e
    public final void a(final String id) {
        p.d(id, "id");
        SimpleProgressDialog simpleProgressDialog = new SimpleProgressDialog();
        simpleProgressDialog.setMessage(Activities.getString(2131887415));
        simpleProgressDialog.setCancelable(false);
        simpleProgressDialog.setCallAppDialogEvents(new CallAppDialogEvents() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragment$onStarted$$inlined$apply$lambda$1
            @Override // com.callapp.contacts.popup.contact.CallAppDialogEvents
            public final void a() {
                CallAppTransformation.TransformationBuilder transformationBuilder = PersonalStoreItemFragment.this.getTransformationBuilder();
                if (transformationBuilder != null) {
                    Future<?> future = transformationBuilder.f16315a.f33663a.get(id);
                    if (future != null && !future.isCancelled() && !future.isDone()) {
                        future.cancel(true);
                    }
                }
            }
        });
        v vVar = v.f38654a;
        this.q = simpleProgressDialog;
        PopupManager.get().a(getContext(), this.q);
    }

    @Override // com.linkedin.android.litr.e
    public final void a(String id, float f) {
        p.d(id, "id");
        SimpleProgressDialog simpleProgressDialog = this.q;
        if (simpleProgressDialog != null) {
            simpleProgressDialog.setMessage(Activities.getString(2131887669).toString() + " (" + ((int) (f * 100.0f)) + "%)");
        }
    }

    @Override // com.linkedin.android.litr.e
    public final void a(String id, Throwable th) {
        p.d(id, "id");
        SimpleProgressDialog.a(this.q);
        FeedbackManager.get().a(Activities.getString(2131888107), (Integer) null);
        CLog.a(th);
    }

    public final void b() {
        if (y - 1 >= 0) {
            RecyclerView recyclerView = this.f13359a;
            if (recyclerView == null) {
                p.a("recyclerView");
            }
            recyclerView.d(y - 1);
        }
    }

    @Override // com.callapp.contacts.activity.marketplace.videoRingtone.AssignPersonalStoreItemAdapter.OnItemClickListener
    public final void b(int i) {
        a(this, true, null, null, i, false, 22);
    }

    @Override // com.callapp.contacts.activity.marketplace.videoRingtone.AssignPersonalStoreItemAdapter.OnItemClickListener
    public final void b(PersonalStoreItemUrlData personalStoreItemUrlData) {
        p.d(personalStoreItemUrlData, "personalStoreItemUrlData");
        if (personalStoreItemUrlData.getType() == 0) {
            String personalStoreItemUrl = personalStoreItemUrlData.getPersonalStoreItemUrl();
            if (personalStoreItemUrl != null) {
                d(personalStoreItemUrl);
                return;
            }
            return;
        }
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<PersonalStoreItemUserData> it2 = personalStoreItemUrlData.getPersonalStoreItemUserData().iterator();
        while (it2.hasNext()) {
            PersonalStoreItemUserData videoRingtoneData = it2.next();
            p.b(videoRingtoneData, "videoRingtoneData");
            arrayList.add(videoRingtoneData.getPhoneOrIdKey());
        }
        String personalStoreItemUrl2 = personalStoreItemUrlData.getPersonalStoreItemUrl();
        p.b(personalStoreItemUrl2, "personalStoreItemUrlData.personalStoreItemUrl");
        a(arrayList, personalStoreItemUrl2, 200);
    }

    @Override // com.linkedin.android.litr.e
    public final void b(String id) {
        p.d(id, "id");
        SimpleProgressDialog.a(this.q);
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        Context context = getContext();
        intent.putExtra("android.intent.extra.STREAM", context != null ? IoUtils.a(context, new File(getShareVideoTempFile().getPath())) : null);
        intent.putExtra("android.intent.extra.TEXT", Activities.getString(2131886551) + org.apache.commons.lang3.StringUtils.SPACE + Activities.getString(2131887128) + org.apache.commons.lang3.StringUtils.SPACE + Activities.a(2131888121, HttpUtils.getCallAppDomain()));
        intent.putExtra("android.intent.extra.SUBJECT", Activities.getString(2131887671));
        intent.setType("video/mp4");
        startActivityForResult(Intent.createChooser(intent, Activities.getString(2131887657)), VastError.ERROR_CODE_GENERAL_WRAPPER);
    }

    @Override // com.callapp.contacts.activity.marketplace.videoRingtone.AssignPersonalStoreItemAdapter.OnItemClickListener
    public final void c(PersonalStoreItemUrlData personalStoreItemUrlData) {
        p.d(personalStoreItemUrlData, "personalStoreItemUrlData");
        AnalyticsManager analyticsManager = AnalyticsManager.get();
        PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType = this.f13360c;
        if (personalStoreItemType == null) {
            p.a("personalStoreItemType");
        }
        analyticsManager.a(Constants.PERSONAL_STORE_ITEM, "ClickShare", PersonalStoreItemHelper.a(personalStoreItemType));
        PopupManager popupManager = PopupManager.get();
        Context context = getContext();
        ArrayList<PersonalStoreItemDetailsData> personalStoreItemDetailsData = personalStoreItemUrlData.getPersonalStoreItemDetailsData();
        popupManager.a(context, personalStoreItemDetailsData != null ? new ShareVideoRingtonePopup(personalStoreItemDetailsData, new PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1(this, personalStoreItemUrlData), personalStoreItemUrlData.getType()) : null);
    }

    @Override // com.linkedin.android.litr.e
    public final void c(String id) {
        p.d(id, "id");
        SimpleProgressDialog.a(this.q);
        FeedbackManager.get().a(Activities.getString(2131886508), (Integer) null);
    }

    public final AssignPersonalStoreItemAdapter getAssignPersonalStoreItemAdapter() {
        return this.e;
    }

    public final boolean getAutoShareVideo() {
        return this.p;
    }

    public final ChooseImageSourceDialogListener getChooseImageSourceDialogListener() {
        return this.g;
    }

    public final int getCurrentAssignFlow() {
        return this.t;
    }

    public final PersonalStoreItemFragmentDelegate getPersonalStoreItemDelegate() {
        return this.f;
    }

    public final SimpleProgressDialog getPickVideoProgressDialog() {
        return this.j;
    }

    public final RecyclerView getRecyclerView() {
        RecyclerView recyclerView = this.f13359a;
        if (recyclerView == null) {
            p.a("recyclerView");
        }
        return recyclerView;
    }

    public final Uri getSelectedItemUri() {
        PersonalStoreItemUrlData selectedStoreItemUrlData = getSelectedStoreItemUrlData();
        String personalStoreItemUrl = selectedStoreItemUrlData != null ? selectedStoreItemUrlData.getPersonalStoreItemUrl() : null;
        if (personalStoreItemUrl != null) {
            return Uri.parse(personalStoreItemUrl);
        }
        return null;
    }

    public final String getSelectedItemUrl() {
        PersonalStoreItemUrlData selectedStoreItemUrlData = getSelectedStoreItemUrlData();
        if (selectedStoreItemUrlData != null) {
            return selectedStoreItemUrlData.getPersonalStoreItemUrl();
        }
        return null;
    }

    public final PersonalStoreItemUrlData getSelectedStoreItemUrlData() {
        AssignPersonalStoreItemAdapter assignPersonalStoreItemAdapter;
        int i = y;
        if (i < 0 || (assignPersonalStoreItemAdapter = this.e) == null) {
            return null;
        }
        return assignPersonalStoreItemAdapter.getItemAtPosition(i);
    }

    public final File getShareVideoTempFile() {
        return (File) this.u.a();
    }

    public final SnapOnScrollListener getSnapOnScrollListener() {
        return this.l;
    }

    public final CallAppTransformation.TransformationBuilder getTransformationBuilder() {
        return this.w;
    }

    public final View getViewAtPosition(int i) {
        RecyclerView recyclerView = this.f13359a;
        if (recyclerView == null) {
            p.a("recyclerView");
        }
        return recyclerView.getChildAt(i);
    }

    public final boolean isInterrupted() {
        return this.k;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0091, code lost:
        if (r8 != 26000) goto L_0x0255;
     */
    @Override // androidx.fragment.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onActivityResult(int r8, int r9, android.content.Intent r10) {
        /*
            Method dump skipped, instructions count: 611
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragment.onActivityResult(int, int, android.content.Intent):void");
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        p.d(context, "context");
        super.onAttach(context);
        if (context instanceof PersonalStoreItemFragmentDelegate) {
            this.f = (PersonalStoreItemFragmentDelegate) context;
        }
    }

    @Override // androidx.lifecycle.u
    public final /* synthetic */ void onChanged(List<? extends PersonalStoreItemUrlData> list) {
        List<? extends PersonalStoreItemUrlData> personalStoreItemUrlData = list;
        p.d(personalStoreItemUrlData, "personalStoreItemUrlData");
        List d2 = n.d((Collection) personalStoreItemUrlData);
        if (d2.size() > 0) {
            String resourceUri = ImageUtils.getResourceUri(2131231995);
            PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType = this.f13360c;
            if (personalStoreItemType == null) {
                p.a("personalStoreItemType");
            }
            d2.add(new PersonalStoreItemUrlData(resourceUri, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, personalStoreItemType));
            PersonalStoreItemDataManager.Companion companion = PersonalStoreItemDataManager.f14492a;
            PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType2 = this.f13360c;
            if (personalStoreItemType2 == null) {
                p.a("personalStoreItemType");
            }
            if (!PersonalStoreItemDataManager.Companion.a(personalStoreItemType2)) {
                String resourceUri2 = ImageUtils.getResourceUri(2131231995);
                PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType3 = this.f13360c;
                if (personalStoreItemType3 == null) {
                    p.a("personalStoreItemType");
                }
                d2.add(new PersonalStoreItemUrlData(resourceUri2, 100, personalStoreItemType3));
            }
        }
        int i = -1;
        int i2 = 0;
        if (d2.isEmpty()) {
            y = -1;
            this.m = null;
            RecyclerView recyclerView = this.f13359a;
            if (recyclerView == null) {
                p.a("recyclerView");
            }
            recyclerView.setVisibility(8);
        } else {
            y = 0;
            RecyclerView recyclerView2 = this.f13359a;
            if (recyclerView2 == null) {
                p.a("recyclerView");
            }
            recyclerView2.setVisibility(0);
        }
        final List<? extends PersonalStoreItemUrlData> a2 = n.a((Iterable) d2, new Comparator<T>() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragment$onChanged$$inlined$compareByDescending$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return a.a(Integer.valueOf(((PersonalStoreItemUrlData) t2).getType()), Integer.valueOf(((PersonalStoreItemUrlData) t).getType()));
            }
        });
        if (this.m != null) {
            Iterator<? extends PersonalStoreItemUrlData> it2 = a2.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                String personalStoreItemUrl = ((PersonalStoreItemUrlData) it2.next()).getPersonalStoreItemUrl();
                PersonalStoreItemUrlData personalStoreItemUrlData2 = this.m;
                p.a(personalStoreItemUrlData2);
                if (p.a((Object) personalStoreItemUrl, (Object) personalStoreItemUrlData2.getPersonalStoreItemUrl())) {
                    i = i2;
                    break;
                }
                i2++;
            }
            y = i;
        }
        AssignPersonalStoreItemAdapter assignPersonalStoreItemAdapter = this.e;
        if (assignPersonalStoreItemAdapter != null) {
            assignPersonalStoreItemAdapter.setPersonalStoreItemDataList(a2);
        }
        PersonalStoreItemFragmentDelegate personalStoreItemFragmentDelegate = this.f;
        if (personalStoreItemFragmentDelegate != null) {
            personalStoreItemFragmentDelegate.b(a2);
        }
        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragment$onChanged$2
            @Override // java.lang.Runnable
            public final void run() {
                int size = a2.size();
                for (final int i3 = 0; i3 < size; i3++) {
                    final ArrayList arrayList = new ArrayList();
                    Iterator<PersonalStoreItemUserData> it3 = ((PersonalStoreItemUrlData) a2.get(i3)).getPersonalStoreItemUserData().iterator();
                    while (it3.hasNext()) {
                        PersonalStoreItemUserData videoRingtoneUserData = it3.next();
                        ContactLoader loadOnlyFromCache = new ContactLoader().addFields(ContactField.fullName, ContactField.deviceId, ContactField.photoUrl).addDeviceIdAndPhotoLoaders().setLoadOnlyFromCache();
                        Phone phone = Phone.f17100b;
                        p.b(videoRingtoneUserData, "videoRingtoneUserData");
                        String phoneOrIdKey = videoRingtoneUserData.getPhoneOrIdKey();
                        p.b(phoneOrIdKey, "videoRingtoneUserData.phoneOrIdKey");
                        ContactData contactData = loadOnlyFromCache.load(phone, Long.parseLong(phoneOrIdKey));
                        p.b(contactData, "contactData");
                        String nameOrNumber = contactData.getNameOrNumber();
                        p.b(nameOrNumber, "contactData.nameOrNumber");
                        arrayList.add(new PersonalStoreItemDetailsData(nameOrNumber, contactData.getPhotoUrl(), false, 4, null));
                    }
                    CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragment$onChanged$2.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AssignPersonalStoreItemAdapter assignPersonalStoreItemAdapter2 = PersonalStoreItemFragment.this.getAssignPersonalStoreItemAdapter();
                            if (assignPersonalStoreItemAdapter2 != null) {
                                assignPersonalStoreItemAdapter2.setPersonalStoreItemDetailsData(i3, arrayList);
                            }
                        }
                    });
                }
                if (PersonalStoreItemFragment.this.getAutoShareVideo() && PersonalStoreItemFragment.a(PersonalStoreItemFragment.this) == PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE) {
                    CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragment$onChanged$2.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            List<PersonalStoreItemUrlData> personalStoreItemList;
                            PersonalStoreItemUrlData personalStoreItemUrlData3;
                            AssignPersonalStoreItemAdapter assignPersonalStoreItemAdapter2 = PersonalStoreItemFragment.this.getAssignPersonalStoreItemAdapter();
                            if (!(assignPersonalStoreItemAdapter2 == null || (personalStoreItemList = assignPersonalStoreItemAdapter2.getPersonalStoreItemList()) == null || (personalStoreItemUrlData3 = personalStoreItemList.get(PersonalStoreItemFragment.f13358b.getSelectedPersonalStoreItemIndex())) == null)) {
                                PersonalStoreItemFragment.this.c(personalStoreItemUrlData3);
                            }
                            PersonalStoreItemFragment.this.setAutoShareVideo(false);
                        }
                    });
                }
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        Object obj = arguments != null ? arguments.get("PERSONAL_STORE_URL_DATA_ARGUMENT") : null;
        Objects.requireNonNull(obj, "null cannot be cast to non-null type com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData.PersonalStoreItemType");
        this.f13360c = (PersonalStoreItemUrlData.PersonalStoreItemType) obj;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        p.d(inflater, "inflater");
        View inflate = inflater.inflate(2131559127, viewGroup, false);
        this.f13361d = inflate;
        RecyclerView recyclerView = inflate != null ? (RecyclerView) inflate.findViewById(2131362629) : null;
        p.a(recyclerView);
        this.f13359a = recyclerView;
        if (recyclerView == null) {
            p.a("recyclerView");
        }
        recyclerView.setHasFixedSize(true);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext(), 0, false);
        RecyclerView recyclerView2 = this.f13359a;
        if (recyclerView2 == null) {
            p.a("recyclerView");
        }
        recyclerView2.setLayoutManager(linearLayoutManager);
        this.e = new AssignPersonalStoreItemAdapter(new ArrayList(), this);
        RecyclerView recyclerView3 = this.f13359a;
        if (recyclerView3 == null) {
            p.a("recyclerView");
        }
        recyclerView3.a(new RecyclerView.j() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragment$onCreateView$1
            @Override // androidx.recyclerview.widget.RecyclerView.j
            public final void a(View view) {
                p.d(view, "view");
                if (PersonalStoreItemFragment.f13358b.getSelectedPersonalStoreItemIndex() == -1) {
                    PersonalStoreItemFragment.f13358b.setSelectedPersonalStoreItemIndex(0);
                    SnapOnScrollListener snapOnScrollListener = PersonalStoreItemFragment.this.getSnapOnScrollListener();
                    if (snapOnScrollListener != null) {
                        snapOnScrollListener.b(PersonalStoreItemFragment.this.getRecyclerView(), PersonalStoreItemFragment.f13358b.getSelectedPersonalStoreItemIndex());
                    }
                    PersonalStoreItemFragmentDelegate personalStoreItemDelegate = PersonalStoreItemFragment.this.getPersonalStoreItemDelegate();
                    if (personalStoreItemDelegate != null) {
                        personalStoreItemDelegate.a(view);
                    }
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.j
            public final void b(View view) {
                p.d(view, "view");
            }
        });
        RecyclerView recyclerView4 = this.f13359a;
        if (recyclerView4 == null) {
            p.a("recyclerView");
        }
        recyclerView4.setAdapter(this.e);
        AssignPersonalStoreItemAdapter assignPersonalStoreItemAdapter = this.e;
        if (assignPersonalStoreItemAdapter != null) {
            assignPersonalStoreItemAdapter.registerAdapterDataObserver(new RecyclerView.c() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragment$onCreateView$2
                @Override // androidx.recyclerview.widget.RecyclerView.c
                public final void onChanged() {
                    if (PersonalStoreItemFragment.f13358b.getSelectedPersonalStoreItemIndex() != -1) {
                        PersonalStoreItemFragment.this.getRecyclerView().d(PersonalStoreItemFragment.f13358b.getSelectedPersonalStoreItemIndex());
                        SnapOnScrollListener snapOnScrollListener = PersonalStoreItemFragment.this.getSnapOnScrollListener();
                        if (snapOnScrollListener != null) {
                            snapOnScrollListener.b(PersonalStoreItemFragment.this.getRecyclerView(), PersonalStoreItemFragment.f13358b.getSelectedPersonalStoreItemIndex());
                        }
                    }
                }
            });
        }
        ItemSnapHelper itemSnapHelper = new ItemSnapHelper();
        RecyclerView recyclerView5 = this.f13359a;
        if (recyclerView5 == null) {
            p.a("recyclerView");
        }
        itemSnapHelper.a(recyclerView5);
        this.l = new SnapOnScrollListener(itemSnapHelper, SnapOnScrollListener.Behavior.NOTIFY_ON_SCROLL_STATE_IDLE, this, 2131230831, false, 16, null);
        RecyclerView recyclerView6 = this.f13359a;
        if (recyclerView6 == null) {
            p.a("recyclerView");
        }
        SnapOnScrollListener snapOnScrollListener = this.l;
        p.a(snapOnScrollListener);
        recyclerView6.a(snapOnScrollListener);
        aa a2 = new ab(this).a(PersonalStoreItemViewModel.class);
        p.b(a2, "ViewModelProvider(this).…temViewModel::class.java)");
        PersonalStoreItemViewModel personalStoreItemViewModel = (PersonalStoreItemViewModel) a2;
        this.x = personalStoreItemViewModel;
        if (personalStoreItemViewModel == null) {
            p.a("viewModel");
        }
        PersonalStoreItemUrlData.PersonalStoreItemType personalType = this.f13360c;
        if (personalType == null) {
            p.a("personalStoreItemType");
        }
        p.d(personalType, "personalType");
        if (personalStoreItemViewModel.f13399a == null) {
            CallAppApplication callAppApplication = CallAppApplication.get();
            p.b(callAppApplication, "CallAppApplication.get()");
            personalStoreItemViewModel.f13399a = new io.objectbox.a.a<>(callAppApplication.getObjectBoxStore().d(PersonalStoreItemUrlData.class).e().a(PersonalStoreItemUrlData_.personalStoreItemType, personalType.ordinal()).a());
        }
        io.objectbox.a.a<PersonalStoreItemUrlData> aVar = personalStoreItemViewModel.f13399a;
        Objects.requireNonNull(aVar, "null cannot be cast to non-null type io.objectbox.android.ObjectBoxLiveData<com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData>");
        aVar.a(getViewLifecycleOwner(), this);
        Uri uri = this.o;
        if (uri != null) {
            a(uri, (String) null, 0);
        }
        String str = this.n;
        if (str != null) {
            a(this, true, null, str, 4, false, 18);
        }
        this.i.setMessage(Activities.getString(2131887415));
        this.i.setCancelable(false);
        this.j.setMessage(Activities.getString(2131887415));
        this.j.setCancelable(false);
        return this.f13361d;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.k = true;
        SimpleProgressDialog.a(this.i);
        SimpleProgressDialog.a(this.j);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDetach() {
        super.onDetach();
        ChooseImageSourceDialogListener chooseImageSourceDialogListener = this.g;
        if (chooseImageSourceDialogListener != null) {
            chooseImageSourceDialogListener.setFragmentWeakReference(null);
        }
    }

    public final void setAutoShareVideo(boolean z) {
        this.p = z;
    }

    public final void setChooseVideoOnStart(Uri uri) {
        this.o = uri;
    }

    public final void setContactIdChooseVideoOnStart(String str) {
        this.n = str;
    }

    public final void setCoverFilePath(String str) {
        this.r = str;
    }

    public final void setLastAddedPersonalStoreItemData(PersonalStoreItemUrlData personalStoreItemUrlData) {
        this.m = personalStoreItemUrlData;
    }

    public final void setTransformationBuilder(CallAppTransformation.TransformationBuilder transformationBuilder) {
        this.w = transformationBuilder;
    }
}
