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
import androidx.lifecycle.AbstractC1231aa;
import androidx.lifecycle.AbstractC1268u;
import androidx.lifecycle.C1232ab;
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
import com.linkedin.android.litr.AbstractC16637e;
import com.shehabic.droppy.C17097b;
import com.shehabic.droppy.DroppyMenuPopup;
import io.objectbox.p501a.C17945a;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.Future;
import kotlin.C18399h;
import kotlin.C20128v;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18282n;
import kotlin.p520b.C18299a;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��þ\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018�� ¿\u00012\u00020\u00012\u00020\u00022\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00032\u00020\u00062\u00020\u0007:\u0002¿\u0001B\u0005¢\u0006\u0002\u0010\bJ$\u0010u\u001a\u00020v2\u0006\u0010w\u001a\u00020/2\u0006\u0010x\u001a\u00020\n2\n\b\u0002\u0010y\u001a\u0004\u0018\u00010\nH\u0002J\u0010\u0010z\u001a\u00020v2\u0006\u0010x\u001a\u00020\nH\u0002J\n\u0010{\u001a\u0004\u0018\u00010\"H\u0002J\b\u0010|\u001a\u0004\u0018\u00010\"J\b\u0010}\u001a\u0004\u0018\u00010\nJ\b\u0010~\u001a\u0004\u0018\u00010\u0005J\u0011\u0010\u007f\u001a\u0004\u0018\u00010\\2\u0007\u0010\u0080\u0001\u001a\u00020/J\u0007\u0010\u0081\u0001\u001a\u00020vJ'\u0010\u0082\u0001\u001a\u00020v2\u0007\u0010\u0083\u0001\u001a\u00020/2\u0007\u0010\u0084\u0001\u001a\u00020/2\n\u0010\u0085\u0001\u001a\u0005\u0018\u00010\u0086\u0001H\u0016J\u0012\u0010\u0087\u0001\u001a\u00020v2\u0007\u0010\u0088\u0001\u001a\u00020/H\u0016J\u0013\u0010\u0089\u0001\u001a\u00020v2\b\u0010\u008a\u0001\u001a\u00030\u008b\u0001H\u0016J%\u0010\u008c\u0001\u001a\u00020v2\u0007\u0010\u008d\u0001\u001a\u00020\n2\u0011\u0010\u008e\u0001\u001a\f\u0012\u0005\u0012\u00030\u0090\u0001\u0018\u00010\u008f\u0001H\u0016J\u0018\u0010\u0091\u0001\u001a\u00020v2\r\u0010\u0092\u0001\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0016J%\u0010\u0093\u0001\u001a\u00020v2\u0007\u0010\u008d\u0001\u001a\u00020\n2\u0011\u0010\u008e\u0001\u001a\f\u0012\u0005\u0012\u00030\u0090\u0001\u0018\u00010\u008f\u0001H\u0016J\u001b\u0010\u0094\u0001\u001a\u00020v2\u0007\u0010\u0095\u0001\u001a\u00020\\2\u0007\u0010\u0096\u0001\u001a\u00020\nH\u0016J\u0015\u0010\u0097\u0001\u001a\u00020v2\n\u0010\u0098\u0001\u001a\u0005\u0018\u00010\u0099\u0001H\u0016J-\u0010\u009a\u0001\u001a\u0004\u0018\u00010\\2\b\u0010\u009b\u0001\u001a\u00030\u009c\u00012\n\u0010\u009d\u0001\u001a\u0005\u0018\u00010\u009e\u00012\n\u0010\u0098\u0001\u001a\u0005\u0018\u00010\u0099\u0001H\u0016J\u0012\u0010\u009f\u0001\u001a\u00020v2\u0007\u0010\u0092\u0001\u001a\u00020\u0005H\u0016J\t\u0010 \u0001\u001a\u00020vH\u0016J\t\u0010¡\u0001\u001a\u00020vH\u0016J\u0012\u0010¢\u0001\u001a\u00020v2\u0007\u0010\u0092\u0001\u001a\u00020\u0005H\u0016J1\u0010£\u0001\u001a\u00020v2\u0007\u0010\u008d\u0001\u001a\u00020\n2\n\u0010¤\u0001\u001a\u0005\u0018\u00010¥\u00012\u0011\u0010\u008e\u0001\u001a\f\u0012\u0005\u0012\u00030\u0090\u0001\u0018\u00010\u008f\u0001H\u0016J\u001c\u0010¦\u0001\u001a\u00020v2\u0007\u0010\u008d\u0001\u001a\u00020\n2\b\u0010§\u0001\u001a\u00030¨\u0001H\u0016J\u0012\u0010©\u0001\u001a\u00020v2\u0007\u0010\u0092\u0001\u001a\u00020\u0005H\u0016J\u0012\u0010ª\u0001\u001a\u00020v2\u0007\u0010\u0080\u0001\u001a\u00020/H\u0016J\u0012\u0010«\u0001\u001a\u00020v2\u0007\u0010\u008d\u0001\u001a\u00020\nH\u0016J\u0007\u0010¬\u0001\u001a\u00020vJ\u0007\u0010\u00ad\u0001\u001a\u00020vJ>\u0010®\u0001\u001a\u00020v2\u0007\u0010¯\u0001\u001a\u00020\u00162\u000b\b\u0002\u0010°\u0001\u001a\u0004\u0018\u00010\n2\u000b\b\u0002\u0010±\u0001\u001a\u0004\u0018\u00010\n2\u0007\u0010\u0088\u0001\u001a\u00020/2\t\b\u0002\u0010²\u0001\u001a\u00020\u0016J\u0011\u0010³\u0001\u001a\u00020v2\u0006\u0010x\u001a\u00020\nH\u0002J\u001a\u0010´\u0001\u001a\u00020v2\u0007\u0010µ\u0001\u001a\u00020\"2\u0006\u0010w\u001a\u00020/H\u0002J&\u0010¶\u0001\u001a\u00020v2\u0007\u0010·\u0001\u001a\u00020\"2\t\u0010¸\u0001\u001a\u0004\u0018\u00010\n2\u0007\u0010¹\u0001\u001a\u00020/H\u0002J@\u0010º\u0001\u001a\u00020v2#\b\u0002\u0010»\u0001\u001a\u001c\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010¼\u0001j\r\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u0001`½\u00012\u0007\u0010¾\u0001\u001a\u00020\n2\u0007\u0010\u0083\u0001\u001a\u00020/H\u0002R\u0014\u0010\t\u001a\u00020\nX\u0086D¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001c\u0010!\u001a\u0004\u0018\u00010\"X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001c\u0010'\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b(\u0010\f\"\u0004\b)\u0010*R\u001c\u0010+\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b,\u0010\f\"\u0004\b-\u0010*R\u001a\u0010.\u001a\u00020/X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\u001a\u00104\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b4\u0010\u0018\"\u0004\b5\u0010\u001aR\u001c\u00106\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b7\u00108\"\u0004\b9\u0010:R\u001a\u0010;\u001a\u00020<X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\u001c\u0010A\u001a\u0004\u0018\u00010BX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bC\u0010D\"\u0004\bE\u0010FR\u000e\u0010G\u001a\u00020HX\u0082.¢\u0006\u0002\n��R\u001a\u0010I\u001a\u00020<X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bJ\u0010>\"\u0004\bK\u0010@R\u001c\u0010L\u001a\u0004\u0018\u00010<X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bM\u0010>\"\u0004\bN\u0010@R\u001c\u0010O\u001a\u0004\u0018\u00010PX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bQ\u0010R\"\u0004\bS\u0010TR\u001a\u0010U\u001a\u00020VX\u0086.¢\u0006\u000e\n��\u001a\u0004\bW\u0010X\"\u0004\bY\u0010ZR\u001c\u0010[\u001a\u0004\u0018\u00010\\X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b]\u0010^\"\u0004\b_\u0010`R\u001b\u0010a\u001a\u00020b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\be\u0010f\u001a\u0004\bc\u0010dR\u001c\u0010g\u001a\u0004\u0018\u00010hX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bi\u0010j\"\u0004\bk\u0010lR\u001c\u0010m\u001a\u0004\u0018\u00010nX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bo\u0010p\"\u0004\bq\u0010rR\u000e\u0010s\u001a\u00020tX\u0082.¢\u0006\u0002\n��¨\u0006À\u0001"}, m4298d2 = {"Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;", "Landroidx/fragment/app/Fragment;", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$OnItemClickListener;", "Landroidx/lifecycle/Observer;", "", "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/OnSnapPositionChangeListener;", "Lcom/linkedin/android/litr/TransformationListener;", "()V", "COVER_FILE_NAME", "", "getCOVER_FILE_NAME", "()Ljava/lang/String;", "assignPersonalStoreItemAdapter", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;", "getAssignPersonalStoreItemAdapter", "()Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;", "setAssignPersonalStoreItemAdapter", "(Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;)V", "assignPersonalStoreItemDialogFragment", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment;", "autoShareVideo", "", "getAutoShareVideo", "()Z", "setAutoShareVideo", "(Z)V", "chooseImageSourceDialogListener", "Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;", "getChooseImageSourceDialogListener", "()Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;", "setChooseImageSourceDialogListener", "(Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;)V", "chooseVideoOnStart", "Landroid/net/Uri;", "getChooseVideoOnStart", "()Landroid/net/Uri;", "setChooseVideoOnStart", "(Landroid/net/Uri;)V", "contactIdChooseVideoOnStart", "getContactIdChooseVideoOnStart", "setContactIdChooseVideoOnStart", "(Ljava/lang/String;)V", "coverFilePath", "getCoverFilePath", "setCoverFilePath", "currentAssignFlow", "", "getCurrentAssignFlow", "()I", "setCurrentAssignFlow", "(I)V", "isInterrupted", "setInterrupted", "lastAddedPersonalStoreItemData", "getLastAddedPersonalStoreItemData", "()Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;", "setLastAddedPersonalStoreItemData", "(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;)V", "loadImageProgressDialog", "Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;", "getLoadImageProgressDialog", "()Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;", "setLoadImageProgressDialog", "(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V", "personalStoreItemDelegate", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragmentDelegate;", "getPersonalStoreItemDelegate", "()Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragmentDelegate;", "setPersonalStoreItemDelegate", "(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragmentDelegate;)V", "personalStoreItemType", "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;", "pickVideoProgressDialog", "getPickVideoProgressDialog", "setPickVideoProgressDialog", "progressDialog", "getProgressDialog", "setProgressDialog", "randomUUIDForFileExtansion", "Ljava/util/UUID;", "getRandomUUIDForFileExtansion", "()Ljava/util/UUID;", "setRandomUUIDForFileExtansion", "(Ljava/util/UUID;)V", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "getRecyclerView", "()Landroidx/recyclerview/widget/RecyclerView;", "setRecyclerView", "(Landroidx/recyclerview/widget/RecyclerView;)V", "rootView", "Landroid/view/View;", "getRootView", "()Landroid/view/View;", "setRootView", "(Landroid/view/View;)V", "shareVideoTempFile", "Ljava/io/File;", "getShareVideoTempFile", "()Ljava/io/File;", "shareVideoTempFile$delegate", "Lkotlin/Lazy;", "snapOnScrollListener", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener;", "getSnapOnScrollListener", "()Lcom/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener;", "setSnapOnScrollListener", "(Lcom/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener;)V", "transformationBuilder", "Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;", "getTransformationBuilder", "()Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;", "setTransformationBuilder", "(Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;)V", "viewModel", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemViewModel;", "afterSourceManifolation", "", "flow", "itemUrl", "contactIdToAdd", "assignToContacts", "getFileUri", "getSelectedItemUri", "getSelectedItemUrl", "getSelectedStoreItemUrlData", "getViewAtPosition", "position", "notifyDataSetChanged", "onActivityResult", "requestCode", "resultCode", "data", "Landroid/content/Intent;", "onAddClicked", "flowType", "onAttach", "context", "Landroid/content/Context;", "onCancelled", "id", "trackTransformationInfos", "", "Lcom/linkedin/android/litr/analytics/TrackTransformationInfo;", "onChanged", "personalStoreItemUrlData", "onCompleted", "onContactsSelected", "view", "names", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onDeleteClicked", "onDestroy", "onDetach", "onEditContactClicked", "onError", "cause", "", "onProgress", EventConstants.PROGRESS, "", "onShareClicked", "onSnapPositionChange", "onStarted", "onSwipeLeft", "onSwipeRight", "showChoosePersonalStoreItemDialog", "inflateFooter", "updatePersonalStoreItem", Constants.EXTRA_CONTACT_ID, "inUpdateMode", "startAssignContactOrAllPopUp", "startPortraitModePopUp", "videoUri", "startTrimActivity", "uriData", "updateItemUrl", "assignFlow", "startVideoRingtoneFragment", "contactsIds", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "selectedVideo", "Companion", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment.class */
public final class PersonalStoreItemFragment extends Fragment implements AbstractC1268u<List<? extends PersonalStoreItemUrlData>>, AssignPersonalStoreItemAdapter.OnItemClickListener, OnSnapPositionChangeListener, AbstractC16637e {

    /* renamed from: b */
    public static final Companion f23745b = new Companion(null);

    /* renamed from: y */
    private static int f23746y = -1;

    /* renamed from: a */
    public RecyclerView f23747a;

    /* renamed from: c */
    private PersonalStoreItemUrlData.PersonalStoreItemType f23748c;

    /* renamed from: d */
    private View f23749d;

    /* renamed from: e */
    private AssignPersonalStoreItemAdapter f23750e;

    /* renamed from: f */
    private PersonalStoreItemFragmentDelegate f23751f;

    /* renamed from: g */
    private ChooseImageSourceDialogListener f23752g;

    /* renamed from: h */
    private UUID f23753h;

    /* renamed from: k */
    private boolean f23756k;

    /* renamed from: l */
    private SnapOnScrollListener f23757l;

    /* renamed from: m */
    private PersonalStoreItemUrlData f23758m;

    /* renamed from: n */
    private String f23759n;

    /* renamed from: o */
    private Uri f23760o;

    /* renamed from: p */
    private boolean f23761p;

    /* renamed from: q */
    private SimpleProgressDialog f23762q;

    /* renamed from: r */
    private String f23763r;

    /* renamed from: v */
    private AssignPersonalStoreItemDialogFragment f23767v;

    /* renamed from: w */
    private CallAppTransformation.TransformationBuilder f23768w;

    /* renamed from: x */
    private PersonalStoreItemViewModel f23769x;

    /* renamed from: i */
    private SimpleProgressDialog f23754i = new SimpleProgressDialog();

    /* renamed from: j */
    private SimpleProgressDialog f23755j = new SimpleProgressDialog();

    /* renamed from: s */
    private final String f23764s = "callAppCustomCover";

    /* renamed from: t */
    private int f23765t = -1;

    /* renamed from: u */
    private final Lazy f23766u = C18399h.m3897a(PersonalStoreItemFragment$shareVideoTempFile$2.f23793a);

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u001a\u0010\f\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0015"}, m4298d2 = {"Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$Companion;", "", "()V", "PERSONAL_STORE_ITEM_FRAGMENT_TAG", "", "PERSONAL_STORE_URL_DATA_ARGUMENT", "REQUEST_CANCELED", "", "REQUEST_VIDEO_CAPTURE", "REQUEST_VIDEO_PICK", "SHARE_RESULT", "SHARE_VIDEO_NAME", "selectedPersonalStoreItemIndex", "getSelectedPersonalStoreItemIndex", "()I", "setSelectedPersonalStoreItemIndex", "(I)V", "newInstance", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;", "personalType", "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static PersonalStoreItemFragment m29862a(PersonalStoreItemUrlData.PersonalStoreItemType personalType) {
            C18524p.m3840d(personalType, "personalType");
            PersonalStoreItemFragment personalStoreItemFragment = new PersonalStoreItemFragment();
            Bundle bundle = new Bundle();
            bundle.putSerializable("PERSONAL_STORE_URL_DATA_ARGUMENT", personalType);
            personalStoreItemFragment.setArguments(bundle);
            return personalStoreItemFragment;
        }

        public final int getSelectedPersonalStoreItemIndex() {
            return PersonalStoreItemFragment.f23746y;
        }

        public final void setSelectedPersonalStoreItemIndex(int i) {
            PersonalStoreItemFragment.f23746y = i;
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ PersonalStoreItemUrlData.PersonalStoreItemType m29881a(PersonalStoreItemFragment personalStoreItemFragment) {
        PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType = personalStoreItemFragment.f23748c;
        if (personalStoreItemType == null) {
            C18524p.m3848a("personalStoreItemType");
        }
        return personalStoreItemType;
    }

    /* renamed from: a */
    private final void m29884a(int i, String str, String str2) {
        PersonalStoreItemFragmentDelegate personalStoreItemFragmentDelegate;
        if (i == 0) {
            PersonalStoreItemDataManager.Companion companion = PersonalStoreItemDataManager.f25278a;
            ArrayList<String> arrayList = new ArrayList<>();
            PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType = this.f23748c;
            if (personalStoreItemType == null) {
                C18524p.m3848a("personalStoreItemType");
            }
            this.f23758m = companion.m28915a(arrayList, str, 0, personalStoreItemType);
            m29865d(str);
        } else if (i == 1) {
            PersonalStoreItemDataManager.Companion companion2 = PersonalStoreItemDataManager.f25278a;
            ArrayList<String> arrayList2 = new ArrayList<>();
            PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType2 = this.f23748c;
            if (personalStoreItemType2 == null) {
                C18524p.m3848a("personalStoreItemType");
            }
            this.f23758m = companion2.m28915a(arrayList2, str, 0, personalStoreItemType2);
            m29875a((ArrayList<String>) null, str, 100);
        } else if (i == 2) {
            PersonalStoreItemDataManager.Companion companion3 = PersonalStoreItemDataManager.f25278a;
            PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType3 = this.f23748c;
            if (personalStoreItemType3 == null) {
                C18524p.m3848a("personalStoreItemType");
            }
            this.f23758m = companion3.m28916a("666666", str, Integer.MAX_VALUE, personalStoreItemType3);
        } else if (i == 3) {
            m29866d();
            PersonalStoreItemUrlData selectedStoreItemUrlData = getSelectedStoreItemUrlData();
            if (selectedStoreItemUrlData == null || (personalStoreItemFragmentDelegate = this.f23751f) == null) {
                return;
            }
            personalStoreItemFragmentDelegate.mo29860a(selectedStoreItemUrlData);
        } else if (i != 4 || str2 == null) {
        } else {
            PersonalStoreItemDataManager.Companion companion4 = PersonalStoreItemDataManager.f25278a;
            PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType4 = this.f23748c;
            if (personalStoreItemType4 == null) {
                C18524p.m3848a("personalStoreItemType");
            }
            this.f23758m = companion4.m28916a(str2, str, 1, personalStoreItemType4);
        }
    }

    /* renamed from: a */
    public final void m29883a(final Uri uri, final String str, final int i) {
        PopupManager.get().m28209a(getContext(), this.f23754i);
        CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragment$startTrimActivity$1
            @Override // java.lang.Runnable
            public final void run() {
                String m27516a = IoUtils.m27516a(uri, "CallScreenThemeTemp");
                if (!PersonalStoreItemFragment.this.isInterrupted()) {
                    Intent intent = new Intent(PersonalStoreItemFragment.this.getContext(), TrimmerActivity.class);
                    intent.putExtra("EXTRA_VIDEO_PATH", m27516a);
                    String uuid = StringUtils.m26045b((CharSequence) str) ? str : UUID.randomUUID().toString();
                    intent.putExtra("EXTRA_ASSIGN_FLOW", i);
                    intent.putExtra("EXTRA_VIDEO_FILE_NAME", uuid);
                    ChooseImageSourceDialogListener chooseImageSourceDialogListener = PersonalStoreItemFragment.this.getChooseImageSourceDialogListener();
                    intent.putExtra("EXTRA_CONTACT_ID", chooseImageSourceDialogListener != null ? chooseImageSourceDialogListener.getContactId() : null);
                    PersonalStoreItemFragment.this.startActivityForResult(intent, 342);
                }
            }
        });
    }

    /* renamed from: a */
    public static final /* synthetic */ void m29880a(PersonalStoreItemFragment personalStoreItemFragment, final Uri uri, final int i) {
        DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder dialogMessageWithTopImageBuilder = new DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder();
        SpannableString spannableString = new SpannableString(Activities.getString(2131887338));
        int color = ThemeUtils.getColor(2131099784);
        Float valueOf = Float.valueOf(14.0f);
        DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder m27965a = DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.m27965a(DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.m27964a(dialogMessageWithTopImageBuilder, spannableString, null, null, null, null, Integer.valueOf(color), valueOf, new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragment$startPortraitModePopUp$dialogMessageWithTopImageNew$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PersonalStoreItemFragment personalStoreItemFragment2 = PersonalStoreItemFragment.this;
                Uri uri2 = uri;
                ChooseImageSourceDialogListener chooseImageSourceDialogListener = personalStoreItemFragment2.getChooseImageSourceDialogListener();
                personalStoreItemFragment2.m29883a(uri2, chooseImageSourceDialogListener != null ? chooseImageSourceDialogListener.getUpdatePersonalStoreItemUrl() : null, i);
            }
        }, true, 21, true, false, 40, 0, 0, null, null, 256030), new SpannableString(Activities.getString(2131886208)), null, null, null, null, Integer.valueOf(ThemeUtils.getColor(2131099784)), valueOf, new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragment$startPortraitModePopUp$dialogMessageWithTopImageNew$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PersonalStoreItemFragment personalStoreItemFragment2 = PersonalStoreItemFragment.this;
                ChooseImageSourceDialogListener chooseImageSourceDialogListener = personalStoreItemFragment2.getChooseImageSourceDialogListener();
                PersonalStoreItemFragment.m29877a(personalStoreItemFragment2, false, chooseImageSourceDialogListener != null ? chooseImageSourceDialogListener.getUpdatePersonalStoreItemUrl() : null, null, i, false, 20);
            }
        }, true, 19, true, 40, 0, 0, null, null, 256030);
        m27965a.f27149a = Float.valueOf(0.5f);
        PopupManager.get().m28209a(personalStoreItemFragment.getContext(), DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.m27962a(DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.m27961a(DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.m27966a(DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.m27959b(m27965a, 2131231847), 80, 40, 40, 40, false, 67), Activities.getString(2131887101), Integer.valueOf(ThemeUtils.getColor(2131100140)), true, 40, 228), Activities.getString(2131888119), Integer.valueOf(ThemeUtils.getColor(2131100140)), 15).m27967a());
    }

    /* renamed from: a */
    public static /* synthetic */ void m29877a(PersonalStoreItemFragment personalStoreItemFragment, boolean z, String str, String str2, int i, boolean z2, int i2) {
        if ((i2 & 2) != 0) {
            str = null;
        }
        if ((i2 & 4) != 0) {
            str2 = null;
        }
        if ((i2 & 16) != 0) {
            z2 = false;
        }
        personalStoreItemFragment.m29874a(z, str, str2, i, z2);
    }

    /* renamed from: a */
    public final void m29875a(ArrayList<String> arrayList, String str, int i) {
        FragmentActivity activity;
        FragmentManager supportFragmentManager;
        AssignPersonalStoreItemDialogFragment.Companion companion = AssignPersonalStoreItemDialogFragment.f23709c;
        PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType = this.f23748c;
        if (personalStoreItemType == null) {
            C18524p.m3848a("personalStoreItemType");
        }
        AssignPersonalStoreItemDialogFragment m29899a = AssignPersonalStoreItemDialogFragment.Companion.m29899a(arrayList, str, i, personalStoreItemType);
        this.f23767v = m29899a;
        if (m29899a == null || (activity = getActivity()) == null || (supportFragmentManager = activity.getSupportFragmentManager()) == null) {
            return;
        }
        m29899a.mo19242a(supportFragmentManager, AssignPersonalStoreItemDialogFragment.f23709c.getTAG());
    }

    /* renamed from: a */
    private void m29874a(boolean z, String str, String str2, int i, boolean z2) {
        ChooseImageSourceDialog chooseImageSourceDialog;
        String str3;
        PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType = this.f23748c;
        if (personalStoreItemType == null) {
            C18524p.m3848a("personalStoreItemType");
        }
        ChooseImageSourceDialog.ImageSourceType imageSourceType = personalStoreItemType == PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE ? ChooseImageSourceDialog.ImageSourceType.VIDEO : ChooseImageSourceDialog.ImageSourceType.IMAGE;
        if (z) {
            View inflate = getLayoutInflater().inflate(2131558604, (ViewGroup) null);
            PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType2 = this.f23748c;
            if (personalStoreItemType2 == null) {
                C18524p.m3848a("personalStoreItemType");
            }
            if (personalStoreItemType2 == PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE) {
                str3 = Activities.getString(2131888119);
                C18524p.m3843b(str3, "Activities.getString(R.string.upload_portrait)");
            } else {
                str3 = Activities.getString(2131888118);
                C18524p.m3843b(str3, "Activities.getString(R.string.upload_landscape)");
            }
            PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType3 = this.f23748c;
            if (personalStoreItemType3 == null) {
                C18524p.m3848a("personalStoreItemType");
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
        if (this.f23752g == null) {
            this.f23752g = new ChooseImageSourceDialogListener(this);
        }
        ChooseImageSourceDialogListener chooseImageSourceDialogListener = this.f23752g;
        if (chooseImageSourceDialogListener != null) {
            chooseImageSourceDialogListener.setFlowType(i);
        }
        ChooseImageSourceDialogListener chooseImageSourceDialogListener2 = this.f23752g;
        if (chooseImageSourceDialogListener2 != null) {
            chooseImageSourceDialogListener2.setUpdatePersonalStoreItemUrl(str);
        }
        ChooseImageSourceDialogListener chooseImageSourceDialogListener3 = this.f23752g;
        if (chooseImageSourceDialogListener3 != null) {
            chooseImageSourceDialogListener3.setContactId(str2);
        }
        PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType4 = this.f23748c;
        if (personalStoreItemType4 == null) {
            C18524p.m3848a("personalStoreItemType");
        }
        if (personalStoreItemType4 == PersonalStoreItemUrlData.PersonalStoreItemType.COVER) {
            if (!z2) {
                this.f23753h = null;
                this.f23763r = null;
            }
            ChooseImageSourceDialogListener chooseImageSourceDialogListener4 = this.f23752g;
            if (chooseImageSourceDialogListener4 != null) {
                chooseImageSourceDialogListener4.setCameraPhotoFile(getFileUri());
            }
        }
        chooseImageSourceDialog.setListener(this.f23752g);
        PopupManager.get().m28209a(getContext(), chooseImageSourceDialog);
    }

    /* renamed from: d */
    private void m29866d() {
        ImageView imageView;
        AssignPersonalStoreItemAdapter assignPersonalStoreItemAdapter;
        PersonalStoreItemUrlData itemAtPosition;
        String personalStoreItemUrl;
        int i = f23746y;
        if (i >= 0) {
            View viewAtPosition = getViewAtPosition(i);
            if (viewAtPosition != null && (imageView = (ImageView) viewAtPosition.findViewById(2131364509)) != null && (assignPersonalStoreItemAdapter = this.f23750e) != null && (itemAtPosition = assignPersonalStoreItemAdapter.getItemAtPosition(f23746y)) != null && (personalStoreItemUrl = itemAtPosition.getPersonalStoreItemUrl()) != null && this.f23750e != null) {
                Context requireContext = requireContext();
                C18524p.m3843b(requireContext, "requireContext()");
                AssignPersonalStoreItemAdapter.m29903a(requireContext, imageView, personalStoreItemUrl);
            }
            AssignPersonalStoreItemAdapter assignPersonalStoreItemAdapter2 = this.f23750e;
            if (assignPersonalStoreItemAdapter2 == null) {
                return;
            }
            assignPersonalStoreItemAdapter2.notifyItemChanged(f23746y);
        }
    }

    /* renamed from: d */
    private final void m29865d(final String str) {
        String str2;
        PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType = this.f23748c;
        if (personalStoreItemType == null) {
            C18524p.m3848a("personalStoreItemType");
        }
        if (personalStoreItemType == PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE) {
            str2 = Activities.getString(2131887411);
            C18524p.m3843b(str2, "Activities.getString(R.s…ease_choose_assign_video)");
        } else {
            str2 = Activities.getString(2131887410);
            C18524p.m3843b(str2, "Activities.getString(R.s…ease_choose_assign_cover)");
        }
        PopupManager.get().m28209a(getContext(), DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.m27962a(DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.m27961a(DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.m27966a(DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.m27964a(DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.m27965a(new DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder(), new SpannableString(Activities.getString(2131886268)), Integer.valueOf(ThemeUtils.getColor(2131099784)), 2131232141, null, null, Integer.valueOf(ThemeUtils.getColor(2131100228)), null, new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragment$startAssignContactOrAllPopUp$dialogMessageWithTopImageNew$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (PersonalStoreItemFragment.m29881a(PersonalStoreItemFragment.this) == PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE) {
                    AnalyticsManager.get().m28449a(Constants.PERSONAL_STORE_ITEM, "ClickAssignAll", PersonalStoreItemHelper.m30047a(PersonalStoreItemFragment.m29881a(PersonalStoreItemFragment.this)));
                    PersonalStoreItemFragment.this.setAutoShareVideo(true);
                }
                PersonalStoreItemFragment.this.setLastAddedPersonalStoreItemData(PersonalStoreItemDataManager.f25278a.m28916a("666666", str, Integer.MAX_VALUE, PersonalStoreItemFragment.m29881a(PersonalStoreItemFragment.this)));
            }
        }, false, null, true, 40, 0, 15, null, null, 224088), new SpannableString(Activities.getString(2131886269)), Integer.valueOf(ThemeUtils.getColor(2131099784)), 2131232141, null, null, Integer.valueOf(ThemeUtils.getColor(2131100228)), null, new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragment$startAssignContactOrAllPopUp$dialogMessageWithTopImageNew$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PersonalStoreItemFragment.this.m29875a((ArrayList<String>) null, str, 100);
            }
        }, false, null, true, false, 40, 15, 0, null, null, 240472), 30, 30, 20, 20, false, 67), Activities.getString(2131887409), Integer.valueOf(ThemeUtils.getColor(2131100140)), true, 0, 244), str2, Integer.valueOf(ThemeUtils.getColor(2131100140)), 15).m27967a());
    }

    private final Uri getFileUri() {
        String str;
        if (this.f23763r == null) {
            if (this.f23753h == null) {
                this.f23753h = UUID.randomUUID();
            }
            if (getContext() != null) {
                str = new File(IoUtils.m27501c("CallAppMedia"), this.f23764s + this.f23753h).getPath();
            } else {
                str = null;
            }
            this.f23763r = str;
        }
        return IoUtils.m27518a(CallAppApplication.get(), new File(this.f23763r));
    }

    /* renamed from: a */
    public final void m29886a() {
        int i = f23746y + 1;
        AssignPersonalStoreItemAdapter assignPersonalStoreItemAdapter = this.f23750e;
        Integer valueOf = assignPersonalStoreItemAdapter != null ? Integer.valueOf(assignPersonalStoreItemAdapter.getItemCount()) : null;
        C18524p.m3851a(valueOf);
        if (i < valueOf.intValue()) {
            RecyclerView recyclerView = this.f23747a;
            if (recyclerView == null) {
                C18524p.m3848a("recyclerView");
            }
            recyclerView.m40449d(i);
        }
    }

    @Override // com.callapp.contacts.activity.marketplace.videoRingtone.OnSnapPositionChangeListener
    /* renamed from: a */
    public final void mo29885a(int i) {
        PersonalStoreItemFragmentDelegate personalStoreItemFragmentDelegate;
        f23746y = i;
        AssignPersonalStoreItemAdapter assignPersonalStoreItemAdapter = this.f23750e;
        PersonalStoreItemUrlData itemAtPosition = assignPersonalStoreItemAdapter != null ? assignPersonalStoreItemAdapter.getItemAtPosition(i) : null;
        if (itemAtPosition == null || (personalStoreItemFragmentDelegate = this.f23751f) == null) {
            return;
        }
        personalStoreItemFragmentDelegate.mo29860a(itemAtPosition);
    }

    @Override // com.callapp.contacts.activity.marketplace.videoRingtone.AssignPersonalStoreItemAdapter.OnItemClickListener
    /* renamed from: a */
    public final void mo29882a(View view, String names) {
        C18524p.m3840d(view, "view");
        C18524p.m3840d(names, "names");
        DroppyMenuPopup.C17093a c17093a = new DroppyMenuPopup.C17093a(getContext(), view);
        C17097b c17097b = new C17097b(2131558975);
        View mo5867a = c17097b.mo5867a(getContext());
        Objects.requireNonNull(mo5867a, "null cannot be cast to non-null type android.widget.TextView");
        TextView textView = (TextView) mo5867a;
        textView.setText(names);
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        DroppyMenuPopup droppyMenuPopup = c17093a.m5873a(c17097b).m5871c();
        droppyMenuPopup.m5878b();
        C18524p.m3843b(droppyMenuPopup, "droppyMenuPopup");
        View m5883a = droppyMenuPopup.m5883a();
        if (m5883a != null) {
            ViewUtils.m27299b(m5883a, 2131230831, ThemeUtils.getColor(2131099686), ThemeUtils.getColor(2131099891), (int) Activities.m27699a(2.0f));
        }
    }

    @Override // com.callapp.contacts.activity.marketplace.videoRingtone.AssignPersonalStoreItemAdapter.OnItemClickListener
    /* renamed from: a */
    public final void mo29876a(final PersonalStoreItemUrlData personalStoreItemUrlData) {
        C18524p.m3840d(personalStoreItemUrlData, "personalStoreItemUrlData");
        DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder dialogMessageWithTopImageBuilder = new DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder();
        SpannableString spannableString = new SpannableString(Activities.getString(2131888248));
        int color = ThemeUtils.getColor(2131099784);
        Float valueOf = Float.valueOf(14.0f);
        PopupManager.get().m28209a(getContext(), DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.m27961a(DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.m27966a(DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.m27965a(DialogMessageWithTopImageNew.Companion.DialogMessageWithTopImageBuilder.m27964a(dialogMessageWithTopImageBuilder, spannableString, null, null, null, null, Integer.valueOf(color), valueOf, new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragment$onDeleteClicked$areYouSureDialog$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PersonalStoreItemFragment.Companion companion = PersonalStoreItemFragment.f23745b;
                companion.setSelectedPersonalStoreItemIndex(companion.getSelectedPersonalStoreItemIndex() - 1);
                PersonalStoreItemFragment personalStoreItemFragment = PersonalStoreItemFragment.this;
                personalStoreItemFragment.setLastAddedPersonalStoreItemData(personalStoreItemFragment.getSelectedStoreItemUrlData());
                PersonalStoreItemDataManager.Companion companion2 = PersonalStoreItemDataManager.f25278a;
                String personalStoreItemUrl = personalStoreItemUrlData.getPersonalStoreItemUrl();
                C18524p.m3843b(personalStoreItemUrl, "personalStoreItemUrlData.personalStoreItemUrl");
                PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType = PersonalStoreItemFragment.m29881a(PersonalStoreItemFragment.this);
                C18524p.m3840d(personalStoreItemUrl, "personalStoreItemUrl");
                C18524p.m3840d(personalStoreItemType, "personalStoreItemType");
                CallAppApplication callAppApplication = CallAppApplication.get();
                C18524p.m3843b(callAppApplication, "CallAppApplication.get()");
                PersonalStoreItemUrlData personalStoreItemUrlData2 = (PersonalStoreItemUrlData) callAppApplication.getObjectBoxStore().m4727d(PersonalStoreItemUrlData.class).m4700e().m4611a(PersonalStoreItemUrlData_.personalStoreItemUrl, personalStoreItemUrl).m4613a(PersonalStoreItemUrlData_.personalStoreItemType, personalStoreItemType.ordinal()).m4618a().m4641a();
                if (personalStoreItemUrlData2 != null) {
                    PersonalStoreItemDataManager.Companion.m28918a(personalStoreItemUrlData2, personalStoreItemType);
                }
            }
        }, true, 17, true, false, 40, 0, 0, null, null, 256030), new SpannableString(Activities.getString(2131887301)), null, null, null, null, Integer.valueOf(ThemeUtils.getColor(2131099784)), valueOf, PersonalStoreItemFragment$onDeleteClicked$areYouSureDialog$2.f23792a, true, 17, true, 40, 0, 0, null, null, 256030), 30, 30, 20, 20, false, 67), Activities.getString(2131887101), Integer.valueOf(ThemeUtils.getColor(2131100140)), true, 0, 244).m27967a());
    }

    @Override // com.linkedin.android.litr.AbstractC16637e
    /* renamed from: a */
    public final void mo6844a(final String id) {
        C18524p.m3840d(id, "id");
        SimpleProgressDialog simpleProgressDialog = new SimpleProgressDialog();
        simpleProgressDialog.setMessage(Activities.getString(2131887415));
        simpleProgressDialog.setCancelable(false);
        simpleProgressDialog.setCallAppDialogEvents(new CallAppDialogEvents() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragment$onStarted$$inlined$apply$lambda$1
            @Override // com.callapp.contacts.popup.contact.CallAppDialogEvents
            /* renamed from: a */
            public final void mo28006a() {
                CallAppTransformation.TransformationBuilder transformationBuilder = PersonalStoreItemFragment.this.getTransformationBuilder();
                if (transformationBuilder != null) {
                    Future<?> future = transformationBuilder.f28416a.f58461a.get(id);
                    if (future == null || future.isCancelled() || future.isDone()) {
                        return;
                    }
                    future.cancel(true);
                }
            }
        });
        C20128v c20128v = C20128v.f66529a;
        this.f23762q = simpleProgressDialog;
        PopupManager.get().m28209a(getContext(), this.f23762q);
    }

    @Override // com.linkedin.android.litr.AbstractC16637e
    /* renamed from: a */
    public final void mo6843a(String id, float f) {
        C18524p.m3840d(id, "id");
        SimpleProgressDialog simpleProgressDialog = this.f23762q;
        if (simpleProgressDialog != null) {
            simpleProgressDialog.setMessage(Activities.getString(2131887669).toString() + " (" + ((int) (f * 100.0f)) + "%)");
        }
    }

    @Override // com.linkedin.android.litr.AbstractC16637e
    /* renamed from: a */
    public final void mo6842a(String id, Throwable th) {
        C18524p.m3840d(id, "id");
        SimpleProgressDialog.m27939a(this.f23762q);
        FeedbackManager.get().m28669a(Activities.getString(2131888107), (Integer) null);
        CLog.m27599a(th);
    }

    /* renamed from: b */
    public final void m29873b() {
        if (f23746y - 1 >= 0) {
            RecyclerView recyclerView = this.f23747a;
            if (recyclerView == null) {
                C18524p.m3848a("recyclerView");
            }
            recyclerView.m40449d(f23746y - 1);
        }
    }

    @Override // com.callapp.contacts.activity.marketplace.videoRingtone.AssignPersonalStoreItemAdapter.OnItemClickListener
    /* renamed from: b */
    public final void mo29872b(int i) {
        m29877a(this, true, null, null, i, false, 22);
    }

    @Override // com.callapp.contacts.activity.marketplace.videoRingtone.AssignPersonalStoreItemAdapter.OnItemClickListener
    /* renamed from: b */
    public final void mo29870b(PersonalStoreItemUrlData personalStoreItemUrlData) {
        C18524p.m3840d(personalStoreItemUrlData, "personalStoreItemUrlData");
        if (personalStoreItemUrlData.getType() == 0) {
            String personalStoreItemUrl = personalStoreItemUrlData.getPersonalStoreItemUrl();
            if (personalStoreItemUrl == null) {
                return;
            }
            m29865d(personalStoreItemUrl);
            return;
        }
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<PersonalStoreItemUserData> it2 = personalStoreItemUrlData.getPersonalStoreItemUserData().iterator();
        while (it2.hasNext()) {
            PersonalStoreItemUserData videoRingtoneData = it2.next();
            C18524p.m3843b(videoRingtoneData, "videoRingtoneData");
            arrayList.add(videoRingtoneData.getPhoneOrIdKey());
        }
        String personalStoreItemUrl2 = personalStoreItemUrlData.getPersonalStoreItemUrl();
        C18524p.m3843b(personalStoreItemUrl2, "personalStoreItemUrlData.personalStoreItemUrl");
        m29875a(arrayList, personalStoreItemUrl2, 200);
    }

    @Override // com.linkedin.android.litr.AbstractC16637e
    /* renamed from: b */
    public final void mo6841b(String id) {
        C18524p.m3840d(id, "id");
        SimpleProgressDialog.m27939a(this.f23762q);
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        Context context = getContext();
        intent.putExtra("android.intent.extra.STREAM", context != null ? IoUtils.m27518a(context, new File(getShareVideoTempFile().getPath())) : null);
        intent.putExtra("android.intent.extra.TEXT", Activities.getString(2131886551) + org.apache.commons.lang3.StringUtils.SPACE + Activities.getString(2131887128) + org.apache.commons.lang3.StringUtils.SPACE + Activities.m27697a(2131888121, HttpUtils.getCallAppDomain()));
        intent.putExtra("android.intent.extra.SUBJECT", Activities.getString(2131887671));
        intent.setType("video/mp4");
        startActivityForResult(Intent.createChooser(intent, Activities.getString(2131887657)), VastError.ERROR_CODE_GENERAL_WRAPPER);
    }

    @Override // com.callapp.contacts.activity.marketplace.videoRingtone.AssignPersonalStoreItemAdapter.OnItemClickListener
    /* renamed from: c */
    public final void mo29867c(PersonalStoreItemUrlData personalStoreItemUrlData) {
        C18524p.m3840d(personalStoreItemUrlData, "personalStoreItemUrlData");
        AnalyticsManager analyticsManager = AnalyticsManager.get();
        PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType = this.f23748c;
        if (personalStoreItemType == null) {
            C18524p.m3848a("personalStoreItemType");
        }
        analyticsManager.m28449a(Constants.PERSONAL_STORE_ITEM, "ClickShare", PersonalStoreItemHelper.m30047a(personalStoreItemType));
        PopupManager popupManager = PopupManager.get();
        Context context = getContext();
        ArrayList<PersonalStoreItemDetailsData> personalStoreItemDetailsData = personalStoreItemUrlData.getPersonalStoreItemDetailsData();
        popupManager.m28209a(context, personalStoreItemDetailsData != null ? new ShareVideoRingtonePopup(personalStoreItemDetailsData, new PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1(this, personalStoreItemUrlData), personalStoreItemUrlData.getType()) : null);
    }

    @Override // com.linkedin.android.litr.AbstractC16637e
    /* renamed from: c */
    public final void mo6840c(String id) {
        C18524p.m3840d(id, "id");
        SimpleProgressDialog.m27939a(this.f23762q);
        FeedbackManager.get().m28669a(Activities.getString(2131886508), (Integer) null);
    }

    public final AssignPersonalStoreItemAdapter getAssignPersonalStoreItemAdapter() {
        return this.f23750e;
    }

    public final boolean getAutoShareVideo() {
        return this.f23761p;
    }

    public final ChooseImageSourceDialogListener getChooseImageSourceDialogListener() {
        return this.f23752g;
    }

    public final int getCurrentAssignFlow() {
        return this.f23765t;
    }

    public final PersonalStoreItemFragmentDelegate getPersonalStoreItemDelegate() {
        return this.f23751f;
    }

    public final SimpleProgressDialog getPickVideoProgressDialog() {
        return this.f23755j;
    }

    public final RecyclerView getRecyclerView() {
        RecyclerView recyclerView = this.f23747a;
        if (recyclerView == null) {
            C18524p.m3848a("recyclerView");
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
        int i = f23746y;
        if (i < 0 || (assignPersonalStoreItemAdapter = this.f23750e) == null) {
            return null;
        }
        return assignPersonalStoreItemAdapter.getItemAtPosition(i);
    }

    public final File getShareVideoTempFile() {
        return (File) this.f23766u.mo1102a();
    }

    public final SnapOnScrollListener getSnapOnScrollListener() {
        return this.f23757l;
    }

    public final CallAppTransformation.TransformationBuilder getTransformationBuilder() {
        return this.f23768w;
    }

    public final View getViewAtPosition(int i) {
        RecyclerView recyclerView = this.f23747a;
        if (recyclerView == null) {
            C18524p.m3848a("recyclerView");
        }
        return recyclerView.getChildAt(i);
    }

    public final boolean isInterrupted() {
        return this.f23756k;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0091, code lost:
        if (r8 != 26000) goto L93;
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
        C18524p.m3840d(context, "context");
        super.onAttach(context);
        if (context instanceof PersonalStoreItemFragmentDelegate) {
            this.f23751f = (PersonalStoreItemFragmentDelegate) context;
        }
    }

    @Override // androidx.lifecycle.AbstractC1268u
    public final /* synthetic */ void onChanged(List<? extends PersonalStoreItemUrlData> list) {
        int i;
        List<? extends PersonalStoreItemUrlData> personalStoreItemUrlData = list;
        C18524p.m3840d(personalStoreItemUrlData, "personalStoreItemUrlData");
        List d = C18282n.m4125d((Collection) personalStoreItemUrlData);
        if (d.size() > 0) {
            String resourceUri = ImageUtils.getResourceUri(2131231995);
            PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType = this.f23748c;
            if (personalStoreItemType == null) {
                C18524p.m3848a("personalStoreItemType");
            }
            d.add(new PersonalStoreItemUrlData(resourceUri, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, personalStoreItemType));
            PersonalStoreItemDataManager.Companion companion = PersonalStoreItemDataManager.f25278a;
            PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType2 = this.f23748c;
            if (personalStoreItemType2 == null) {
                C18524p.m3848a("personalStoreItemType");
            }
            if (!PersonalStoreItemDataManager.Companion.m28919a(personalStoreItemType2)) {
                String resourceUri2 = ImageUtils.getResourceUri(2131231995);
                PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType3 = this.f23748c;
                if (personalStoreItemType3 == null) {
                    C18524p.m3848a("personalStoreItemType");
                }
                d.add(new PersonalStoreItemUrlData(resourceUri2, 100, personalStoreItemType3));
            }
        }
        int i2 = 0;
        if (d.isEmpty()) {
            f23746y = -1;
            this.f23758m = null;
            RecyclerView recyclerView = this.f23747a;
            if (recyclerView == null) {
                C18524p.m3848a("recyclerView");
            }
            recyclerView.setVisibility(8);
        } else {
            f23746y = 0;
            RecyclerView recyclerView2 = this.f23747a;
            if (recyclerView2 == null) {
                C18524p.m3848a("recyclerView");
            }
            recyclerView2.setVisibility(0);
        }
        final List<? extends PersonalStoreItemUrlData> a = C18282n.m4145a((Iterable) d, new Comparator<T>() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragment$onChanged$$inlined$compareByDescending$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return C18299a.m4103a(Integer.valueOf(((PersonalStoreItemUrlData) t2).getType()), Integer.valueOf(((PersonalStoreItemUrlData) t).getType()));
            }
        });
        if (this.f23758m != null) {
            Iterator<? extends PersonalStoreItemUrlData> it2 = a.iterator();
            while (true) {
                i = -1;
                if (!it2.hasNext()) {
                    break;
                }
                String personalStoreItemUrl = it2.next().getPersonalStoreItemUrl();
                PersonalStoreItemUrlData personalStoreItemUrlData2 = this.f23758m;
                C18524p.m3851a(personalStoreItemUrlData2);
                if (C18524p.m3850a((Object) personalStoreItemUrl, (Object) personalStoreItemUrlData2.getPersonalStoreItemUrl())) {
                    i = i2;
                    break;
                }
                i2++;
            }
            f23746y = i;
        }
        AssignPersonalStoreItemAdapter assignPersonalStoreItemAdapter = this.f23750e;
        if (assignPersonalStoreItemAdapter != null) {
            assignPersonalStoreItemAdapter.setPersonalStoreItemDataList(a);
        }
        PersonalStoreItemFragmentDelegate personalStoreItemFragmentDelegate = this.f23751f;
        if (personalStoreItemFragmentDelegate != null) {
            personalStoreItemFragmentDelegate.mo29859b(a);
        }
        CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragment$onChanged$2
            @Override // java.lang.Runnable
            public final void run() {
                int size = a.size();
                for (int i3 = 0; i3 < size; i3++) {
                    final ArrayList arrayList = new ArrayList();
                    Iterator<PersonalStoreItemUserData> it3 = ((PersonalStoreItemUrlData) a.get(i3)).getPersonalStoreItemUserData().iterator();
                    while (it3.hasNext()) {
                        PersonalStoreItemUserData videoRingtoneUserData = it3.next();
                        ContactLoader loadOnlyFromCache = new ContactLoader().addFields(ContactField.fullName, ContactField.deviceId, ContactField.photoUrl).addDeviceIdAndPhotoLoaders().setLoadOnlyFromCache();
                        Phone phone = Phone.f29662b;
                        C18524p.m3843b(videoRingtoneUserData, "videoRingtoneUserData");
                        String phoneOrIdKey = videoRingtoneUserData.getPhoneOrIdKey();
                        C18524p.m3843b(phoneOrIdKey, "videoRingtoneUserData.phoneOrIdKey");
                        ContactData contactData = loadOnlyFromCache.load(phone, Long.parseLong(phoneOrIdKey));
                        C18524p.m3843b(contactData, "contactData");
                        String nameOrNumber = contactData.getNameOrNumber();
                        C18524p.m3843b(nameOrNumber, "contactData.nameOrNumber");
                        arrayList.add(new PersonalStoreItemDetailsData(nameOrNumber, contactData.getPhotoUrl(), false, 4, null));
                    }
                    final int i4 = i3;
                    CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragment$onChanged$2.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AssignPersonalStoreItemAdapter assignPersonalStoreItemAdapter2 = PersonalStoreItemFragment.this.getAssignPersonalStoreItemAdapter();
                            if (assignPersonalStoreItemAdapter2 != null) {
                                assignPersonalStoreItemAdapter2.setPersonalStoreItemDetailsData(i4, arrayList);
                            }
                        }
                    });
                }
                if (!PersonalStoreItemFragment.this.getAutoShareVideo() || PersonalStoreItemFragment.m29881a(PersonalStoreItemFragment.this) != PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE) {
                    return;
                }
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragment$onChanged$2.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        List<PersonalStoreItemUrlData> personalStoreItemList;
                        PersonalStoreItemUrlData personalStoreItemUrlData3;
                        AssignPersonalStoreItemAdapter assignPersonalStoreItemAdapter2 = PersonalStoreItemFragment.this.getAssignPersonalStoreItemAdapter();
                        if (assignPersonalStoreItemAdapter2 != null && (personalStoreItemList = assignPersonalStoreItemAdapter2.getPersonalStoreItemList()) != null && (personalStoreItemUrlData3 = personalStoreItemList.get(PersonalStoreItemFragment.f23745b.getSelectedPersonalStoreItemIndex())) != null) {
                            PersonalStoreItemFragment.this.mo29867c(personalStoreItemUrlData3);
                        }
                        PersonalStoreItemFragment.this.setAutoShareVideo(false);
                    }
                });
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        PersonalStoreItemUrlData.PersonalStoreItemType personalStoreItemType = arguments != null ? arguments.get("PERSONAL_STORE_URL_DATA_ARGUMENT") : null;
        Objects.requireNonNull(personalStoreItemType, "null cannot be cast to non-null type com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData.PersonalStoreItemType");
        this.f23748c = personalStoreItemType;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        C18524p.m3840d(inflater, "inflater");
        View inflate = inflater.inflate(2131559127, viewGroup, false);
        this.f23749d = inflate;
        RecyclerView recyclerView = inflate != null ? (RecyclerView) inflate.findViewById(2131362629) : null;
        C18524p.m3851a(recyclerView);
        this.f23747a = recyclerView;
        if (recyclerView == null) {
            C18524p.m3848a("recyclerView");
        }
        recyclerView.setHasFixedSize(true);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext(), 0, false);
        RecyclerView recyclerView2 = this.f23747a;
        if (recyclerView2 == null) {
            C18524p.m3848a("recyclerView");
        }
        recyclerView2.setLayoutManager(linearLayoutManager);
        this.f23750e = new AssignPersonalStoreItemAdapter(new ArrayList(), this);
        RecyclerView recyclerView3 = this.f23747a;
        if (recyclerView3 == null) {
            C18524p.m3848a("recyclerView");
        }
        recyclerView3.m40479a(new RecyclerView.AbstractC2642j() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragment$onCreateView$1
            @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2642j
            /* renamed from: a */
            public final void mo29864a(View view) {
                C18524p.m3840d(view, "view");
                if (PersonalStoreItemFragment.f23745b.getSelectedPersonalStoreItemIndex() == -1) {
                    PersonalStoreItemFragment.f23745b.setSelectedPersonalStoreItemIndex(0);
                    SnapOnScrollListener snapOnScrollListener = PersonalStoreItemFragment.this.getSnapOnScrollListener();
                    if (snapOnScrollListener != null) {
                        snapOnScrollListener.m29854b(PersonalStoreItemFragment.this.getRecyclerView(), PersonalStoreItemFragment.f23745b.getSelectedPersonalStoreItemIndex());
                    }
                    PersonalStoreItemFragmentDelegate personalStoreItemDelegate = PersonalStoreItemFragment.this.getPersonalStoreItemDelegate();
                    if (personalStoreItemDelegate == null) {
                        return;
                    }
                    personalStoreItemDelegate.mo29861a(view);
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2642j
            /* renamed from: b */
            public final void mo29863b(View view) {
                C18524p.m3840d(view, "view");
            }
        });
        RecyclerView recyclerView4 = this.f23747a;
        if (recyclerView4 == null) {
            C18524p.m3848a("recyclerView");
        }
        recyclerView4.setAdapter(this.f23750e);
        AssignPersonalStoreItemAdapter assignPersonalStoreItemAdapter = this.f23750e;
        if (assignPersonalStoreItemAdapter != null) {
            assignPersonalStoreItemAdapter.registerAdapterDataObserver(new RecyclerView.AbstractC2629c() { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.PersonalStoreItemFragment$onCreateView$2
                @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2629c
                public final void onChanged() {
                    if (PersonalStoreItemFragment.f23745b.getSelectedPersonalStoreItemIndex() != -1) {
                        PersonalStoreItemFragment.this.getRecyclerView().m40449d(PersonalStoreItemFragment.f23745b.getSelectedPersonalStoreItemIndex());
                        SnapOnScrollListener snapOnScrollListener = PersonalStoreItemFragment.this.getSnapOnScrollListener();
                        if (snapOnScrollListener == null) {
                            return;
                        }
                        snapOnScrollListener.m29854b(PersonalStoreItemFragment.this.getRecyclerView(), PersonalStoreItemFragment.f23745b.getSelectedPersonalStoreItemIndex());
                    }
                }
            });
        }
        ItemSnapHelper itemSnapHelper = new ItemSnapHelper();
        RecyclerView recyclerView5 = this.f23747a;
        if (recyclerView5 == null) {
            C18524p.m3848a("recyclerView");
        }
        itemSnapHelper.mo29891a(recyclerView5);
        this.f23757l = new SnapOnScrollListener(itemSnapHelper, SnapOnScrollListener.Behavior.NOTIFY_ON_SCROLL_STATE_IDLE, this, 2131230831, false, 16, null);
        RecyclerView recyclerView6 = this.f23747a;
        if (recyclerView6 == null) {
            C18524p.m3848a("recyclerView");
        }
        SnapOnScrollListener snapOnScrollListener = this.f23757l;
        C18524p.m3851a(snapOnScrollListener);
        recyclerView6.m40478a(snapOnScrollListener);
        AbstractC1231aa m43312a = new C1232ab(this).m43312a(PersonalStoreItemViewModel.class);
        C18524p.m3843b(m43312a, "ViewModelProvider(this).…temViewModel::class.java)");
        PersonalStoreItemViewModel personalStoreItemViewModel = (PersonalStoreItemViewModel) m43312a;
        this.f23769x = personalStoreItemViewModel;
        if (personalStoreItemViewModel == null) {
            C18524p.m3848a("viewModel");
        }
        PersonalStoreItemUrlData.PersonalStoreItemType personalType = this.f23748c;
        if (personalType == null) {
            C18524p.m3848a("personalStoreItemType");
        }
        C18524p.m3840d(personalType, "personalType");
        if (personalStoreItemViewModel.f23807a == null) {
            CallAppApplication callAppApplication = CallAppApplication.get();
            C18524p.m3843b(callAppApplication, "CallAppApplication.get()");
            personalStoreItemViewModel.f23807a = new C17945a<>(callAppApplication.getObjectBoxStore().m4727d(PersonalStoreItemUrlData.class).m4700e().m4613a(PersonalStoreItemUrlData_.personalStoreItemType, personalType.ordinal()).m4618a());
        }
        C17945a<PersonalStoreItemUrlData> c17945a = personalStoreItemViewModel.f23807a;
        Objects.requireNonNull(c17945a, "null cannot be cast to non-null type io.objectbox.android.ObjectBoxLiveData<com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData>");
        c17945a.m43334a(getViewLifecycleOwner(), this);
        Uri uri = this.f23760o;
        if (uri != null) {
            m29883a(uri, (String) null, 0);
        }
        String str = this.f23759n;
        if (str != null) {
            m29877a(this, true, null, str, 4, false, 18);
        }
        this.f23754i.setMessage(Activities.getString(2131887415));
        this.f23754i.setCancelable(false);
        this.f23755j.setMessage(Activities.getString(2131887415));
        this.f23755j.setCancelable(false);
        return this.f23749d;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.f23756k = true;
        SimpleProgressDialog.m27939a(this.f23754i);
        SimpleProgressDialog.m27939a(this.f23755j);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDetach() {
        super.onDetach();
        ChooseImageSourceDialogListener chooseImageSourceDialogListener = this.f23752g;
        if (chooseImageSourceDialogListener != null) {
            chooseImageSourceDialogListener.setFragmentWeakReference(null);
        }
    }

    public final void setAutoShareVideo(boolean z) {
        this.f23761p = z;
    }

    public final void setChooseVideoOnStart(Uri uri) {
        this.f23760o = uri;
    }

    public final void setContactIdChooseVideoOnStart(String str) {
        this.f23759n = str;
    }

    public final void setCoverFilePath(String str) {
        this.f23763r = str;
    }

    public final void setLastAddedPersonalStoreItemData(PersonalStoreItemUrlData personalStoreItemUrlData) {
        this.f23758m = personalStoreItemUrlData;
    }

    public final void setTransformationBuilder(CallAppTransformation.TransformationBuilder transformationBuilder) {
        this.f23768w = transformationBuilder;
    }
}
