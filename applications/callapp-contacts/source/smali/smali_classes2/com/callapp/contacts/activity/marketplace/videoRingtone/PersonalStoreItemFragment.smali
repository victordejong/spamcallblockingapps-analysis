.class public final Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/u;
.implements Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$OnItemClickListener;
.implements Lcom/callapp/contacts/activity/marketplace/videoRingtone/OnSnapPositionChangeListener;
.implements Lcom/linkedin/android/litr/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/Fragment;",
        "Landroidx/lifecycle/u<",
        "Ljava/util/List<",
        "+",
        "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;",
        ">;>;",
        "Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$OnItemClickListener;",
        "Lcom/callapp/contacts/activity/marketplace/videoRingtone/OnSnapPositionChangeListener;",
        "Lcom/linkedin/android/litr/e;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00fe\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00bf\u00012\u00020\u00012\u00020\u00022\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u00032\u00020\u00062\u00020\u0007:\u0002\u00bf\u0001B\u0005\u00a2\u0006\u0002\u0010\u0008J$\u0010u\u001a\u00020v2\u0006\u0010w\u001a\u00020/2\u0006\u0010x\u001a\u00020\n2\n\u0008\u0002\u0010y\u001a\u0004\u0018\u00010\nH\u0002J\u0010\u0010z\u001a\u00020v2\u0006\u0010x\u001a\u00020\nH\u0002J\n\u0010{\u001a\u0004\u0018\u00010\"H\u0002J\u0008\u0010|\u001a\u0004\u0018\u00010\"J\u0008\u0010}\u001a\u0004\u0018\u00010\nJ\u0008\u0010~\u001a\u0004\u0018\u00010\u0005J\u0011\u0010\u007f\u001a\u0004\u0018\u00010\\2\u0007\u0010\u0080\u0001\u001a\u00020/J\u0007\u0010\u0081\u0001\u001a\u00020vJ\'\u0010\u0082\u0001\u001a\u00020v2\u0007\u0010\u0083\u0001\u001a\u00020/2\u0007\u0010\u0084\u0001\u001a\u00020/2\n\u0010\u0085\u0001\u001a\u0005\u0018\u00010\u0086\u0001H\u0016J\u0012\u0010\u0087\u0001\u001a\u00020v2\u0007\u0010\u0088\u0001\u001a\u00020/H\u0016J\u0013\u0010\u0089\u0001\u001a\u00020v2\u0008\u0010\u008a\u0001\u001a\u00030\u008b\u0001H\u0016J%\u0010\u008c\u0001\u001a\u00020v2\u0007\u0010\u008d\u0001\u001a\u00020\n2\u0011\u0010\u008e\u0001\u001a\u000c\u0012\u0005\u0012\u00030\u0090\u0001\u0018\u00010\u008f\u0001H\u0016J\u0018\u0010\u0091\u0001\u001a\u00020v2\r\u0010\u0092\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0016J%\u0010\u0093\u0001\u001a\u00020v2\u0007\u0010\u008d\u0001\u001a\u00020\n2\u0011\u0010\u008e\u0001\u001a\u000c\u0012\u0005\u0012\u00030\u0090\u0001\u0018\u00010\u008f\u0001H\u0016J\u001b\u0010\u0094\u0001\u001a\u00020v2\u0007\u0010\u0095\u0001\u001a\u00020\\2\u0007\u0010\u0096\u0001\u001a\u00020\nH\u0016J\u0015\u0010\u0097\u0001\u001a\u00020v2\n\u0010\u0098\u0001\u001a\u0005\u0018\u00010\u0099\u0001H\u0016J-\u0010\u009a\u0001\u001a\u0004\u0018\u00010\\2\u0008\u0010\u009b\u0001\u001a\u00030\u009c\u00012\n\u0010\u009d\u0001\u001a\u0005\u0018\u00010\u009e\u00012\n\u0010\u0098\u0001\u001a\u0005\u0018\u00010\u0099\u0001H\u0016J\u0012\u0010\u009f\u0001\u001a\u00020v2\u0007\u0010\u0092\u0001\u001a\u00020\u0005H\u0016J\t\u0010\u00a0\u0001\u001a\u00020vH\u0016J\t\u0010\u00a1\u0001\u001a\u00020vH\u0016J\u0012\u0010\u00a2\u0001\u001a\u00020v2\u0007\u0010\u0092\u0001\u001a\u00020\u0005H\u0016J1\u0010\u00a3\u0001\u001a\u00020v2\u0007\u0010\u008d\u0001\u001a\u00020\n2\n\u0010\u00a4\u0001\u001a\u0005\u0018\u00010\u00a5\u00012\u0011\u0010\u008e\u0001\u001a\u000c\u0012\u0005\u0012\u00030\u0090\u0001\u0018\u00010\u008f\u0001H\u0016J\u001c\u0010\u00a6\u0001\u001a\u00020v2\u0007\u0010\u008d\u0001\u001a\u00020\n2\u0008\u0010\u00a7\u0001\u001a\u00030\u00a8\u0001H\u0016J\u0012\u0010\u00a9\u0001\u001a\u00020v2\u0007\u0010\u0092\u0001\u001a\u00020\u0005H\u0016J\u0012\u0010\u00aa\u0001\u001a\u00020v2\u0007\u0010\u0080\u0001\u001a\u00020/H\u0016J\u0012\u0010\u00ab\u0001\u001a\u00020v2\u0007\u0010\u008d\u0001\u001a\u00020\nH\u0016J\u0007\u0010\u00ac\u0001\u001a\u00020vJ\u0007\u0010\u00ad\u0001\u001a\u00020vJ>\u0010\u00ae\u0001\u001a\u00020v2\u0007\u0010\u00af\u0001\u001a\u00020\u00162\u000b\u0008\u0002\u0010\u00b0\u0001\u001a\u0004\u0018\u00010\n2\u000b\u0008\u0002\u0010\u00b1\u0001\u001a\u0004\u0018\u00010\n2\u0007\u0010\u0088\u0001\u001a\u00020/2\t\u0008\u0002\u0010\u00b2\u0001\u001a\u00020\u0016J\u0011\u0010\u00b3\u0001\u001a\u00020v2\u0006\u0010x\u001a\u00020\nH\u0002J\u001a\u0010\u00b4\u0001\u001a\u00020v2\u0007\u0010\u00b5\u0001\u001a\u00020\"2\u0006\u0010w\u001a\u00020/H\u0002J&\u0010\u00b6\u0001\u001a\u00020v2\u0007\u0010\u00b7\u0001\u001a\u00020\"2\t\u0010\u00b8\u0001\u001a\u0004\u0018\u00010\n2\u0007\u0010\u00b9\u0001\u001a\u00020/H\u0002J@\u0010\u00ba\u0001\u001a\u00020v2#\u0008\u0002\u0010\u00bb\u0001\u001a\u001c\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\u00bc\u0001j\r\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u0001`\u00bd\u00012\u0007\u0010\u00be\u0001\u001a\u00020\n2\u0007\u0010\u0083\u0001\u001a\u00020/H\u0002R\u0014\u0010\t\u001a\u00020\nX\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001c\u0010!\u001a\u0004\u0018\u00010\"X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u001c\u0010\'\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u000c\"\u0004\u0008)\u0010*R\u001c\u0010+\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\u000c\"\u0004\u0008-\u0010*R\u001a\u0010.\u001a\u00020/X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R\u001a\u00104\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u0010\u0018\"\u0004\u00085\u0010\u001aR\u001c\u00106\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:R\u001a\u0010;\u001a\u00020<X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R\u001c\u0010A\u001a\u0004\u0018\u00010BX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010FR\u000e\u0010G\u001a\u00020HX\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010I\u001a\u00020<X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008J\u0010>\"\u0004\u0008K\u0010@R\u001c\u0010L\u001a\u0004\u0018\u00010<X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008M\u0010>\"\u0004\u0008N\u0010@R\u001c\u0010O\u001a\u0004\u0018\u00010PX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010TR\u001a\u0010U\u001a\u00020VX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008W\u0010X\"\u0004\u0008Y\u0010ZR\u001c\u0010[\u001a\u0004\u0018\u00010\\X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008]\u0010^\"\u0004\u0008_\u0010`R\u001b\u0010a\u001a\u00020b8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008e\u0010f\u001a\u0004\u0008c\u0010dR\u001c\u0010g\u001a\u0004\u0018\u00010hX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008i\u0010j\"\u0004\u0008k\u0010lR\u001c\u0010m\u001a\u0004\u0018\u00010nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008o\u0010p\"\u0004\u0008q\u0010rR\u000e\u0010s\u001a\u00020tX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00c0\u0001"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$OnItemClickListener;",
        "Landroidx/lifecycle/Observer;",
        "",
        "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;",
        "Lcom/callapp/contacts/activity/marketplace/videoRingtone/OnSnapPositionChangeListener;",
        "Lcom/linkedin/android/litr/TransformationListener;",
        "()V",
        "COVER_FILE_NAME",
        "",
        "getCOVER_FILE_NAME",
        "()Ljava/lang/String;",
        "assignPersonalStoreItemAdapter",
        "Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;",
        "getAssignPersonalStoreItemAdapter",
        "()Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;",
        "setAssignPersonalStoreItemAdapter",
        "(Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;)V",
        "assignPersonalStoreItemDialogFragment",
        "Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment;",
        "autoShareVideo",
        "",
        "getAutoShareVideo",
        "()Z",
        "setAutoShareVideo",
        "(Z)V",
        "chooseImageSourceDialogListener",
        "Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;",
        "getChooseImageSourceDialogListener",
        "()Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;",
        "setChooseImageSourceDialogListener",
        "(Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;)V",
        "chooseVideoOnStart",
        "Landroid/net/Uri;",
        "getChooseVideoOnStart",
        "()Landroid/net/Uri;",
        "setChooseVideoOnStart",
        "(Landroid/net/Uri;)V",
        "contactIdChooseVideoOnStart",
        "getContactIdChooseVideoOnStart",
        "setContactIdChooseVideoOnStart",
        "(Ljava/lang/String;)V",
        "coverFilePath",
        "getCoverFilePath",
        "setCoverFilePath",
        "currentAssignFlow",
        "",
        "getCurrentAssignFlow",
        "()I",
        "setCurrentAssignFlow",
        "(I)V",
        "isInterrupted",
        "setInterrupted",
        "lastAddedPersonalStoreItemData",
        "getLastAddedPersonalStoreItemData",
        "()Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;",
        "setLastAddedPersonalStoreItemData",
        "(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;)V",
        "loadImageProgressDialog",
        "Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;",
        "getLoadImageProgressDialog",
        "()Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;",
        "setLoadImageProgressDialog",
        "(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V",
        "personalStoreItemDelegate",
        "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragmentDelegate;",
        "getPersonalStoreItemDelegate",
        "()Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragmentDelegate;",
        "setPersonalStoreItemDelegate",
        "(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragmentDelegate;)V",
        "personalStoreItemType",
        "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;",
        "pickVideoProgressDialog",
        "getPickVideoProgressDialog",
        "setPickVideoProgressDialog",
        "progressDialog",
        "getProgressDialog",
        "setProgressDialog",
        "randomUUIDForFileExtansion",
        "Ljava/util/UUID;",
        "getRandomUUIDForFileExtansion",
        "()Ljava/util/UUID;",
        "setRandomUUIDForFileExtansion",
        "(Ljava/util/UUID;)V",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "getRecyclerView",
        "()Landroidx/recyclerview/widget/RecyclerView;",
        "setRecyclerView",
        "(Landroidx/recyclerview/widget/RecyclerView;)V",
        "rootView",
        "Landroid/view/View;",
        "getRootView",
        "()Landroid/view/View;",
        "setRootView",
        "(Landroid/view/View;)V",
        "shareVideoTempFile",
        "Ljava/io/File;",
        "getShareVideoTempFile",
        "()Ljava/io/File;",
        "shareVideoTempFile$delegate",
        "Lkotlin/Lazy;",
        "snapOnScrollListener",
        "Lcom/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener;",
        "getSnapOnScrollListener",
        "()Lcom/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener;",
        "setSnapOnScrollListener",
        "(Lcom/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener;)V",
        "transformationBuilder",
        "Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;",
        "getTransformationBuilder",
        "()Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;",
        "setTransformationBuilder",
        "(Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;)V",
        "viewModel",
        "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemViewModel;",
        "afterSourceManifolation",
        "",
        "flow",
        "itemUrl",
        "contactIdToAdd",
        "assignToContacts",
        "getFileUri",
        "getSelectedItemUri",
        "getSelectedItemUrl",
        "getSelectedStoreItemUrlData",
        "getViewAtPosition",
        "position",
        "notifyDataSetChanged",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onAddClicked",
        "flowType",
        "onAttach",
        "context",
        "Landroid/content/Context;",
        "onCancelled",
        "id",
        "trackTransformationInfos",
        "",
        "Lcom/linkedin/android/litr/analytics/TrackTransformationInfo;",
        "onChanged",
        "personalStoreItemUrlData",
        "onCompleted",
        "onContactsSelected",
        "view",
        "names",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onDeleteClicked",
        "onDestroy",
        "onDetach",
        "onEditContactClicked",
        "onError",
        "cause",
        "",
        "onProgress",
        "progress",
        "",
        "onShareClicked",
        "onSnapPositionChange",
        "onStarted",
        "onSwipeLeft",
        "onSwipeRight",
        "showChoosePersonalStoreItemDialog",
        "inflateFooter",
        "updatePersonalStoreItem",
        "contactId",
        "inUpdateMode",
        "startAssignContactOrAllPopUp",
        "startPortraitModePopUp",
        "videoUri",
        "startTrimActivity",
        "uriData",
        "updateItemUrl",
        "assignFlow",
        "startVideoRingtoneFragment",
        "contactsIds",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "selectedVideo",
        "Companion",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final b:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$Companion;

.field private static y:I


# instance fields
.field public a:Landroidx/recyclerview/widget/RecyclerView;

.field private c:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

.field private d:Landroid/view/View;

.field private e:Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;

.field private f:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragmentDelegate;

.field private g:Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;

.field private h:Ljava/util/UUID;

.field private i:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

.field private j:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

.field private k:Z

.field private l:Lcom/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener;

.field private m:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

.field private n:Ljava/lang/String;

.field private o:Landroid/net/Uri;

.field private p:Z

.field private q:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

.field private r:Ljava/lang/String;

.field private final s:Ljava/lang/String;

.field private t:I

.field private final u:Lkotlin/Lazy;

.field private v:Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment;

.field private w:Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;

.field private x:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->b:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$Companion;

    const/4 v0, -0x1

    .line 110
    sput v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->y:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 81
    new-instance v0, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-direct {v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->i:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    .line 82
    new-instance v0, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-direct {v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->j:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    const-string v0, "callAppCustomCover"

    .line 91
    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->s:Ljava/lang/String;

    const/4 v0, -0x1

    .line 92
    iput v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->t:I

    .line 94
    sget-object v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$shareVideoTempFile$2;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$shareVideoTempFile$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/h;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->u:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;)Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;
    .locals 1

    .line 71
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->c:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    if-nez p0, :cond_0

    const-string v0, "personalStoreItemType"

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "personalStoreItemType"

    if-eqz p1, :cond_9

    const/4 v2, 0x1

    if-eq p1, v2, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_2

    .line 457
    sget-object p1, Lcom/callapp/contacts/loader/PersonalStoreItemDataManager;->a:Lcom/callapp/contacts/loader/PersonalStoreItemDataManager$Companion;

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->c:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, p3, p2, v2, v0}, Lcom/callapp/contacts/loader/PersonalStoreItemDataManager$Companion;->a(Ljava/lang/String;Ljava/lang/String;ILcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->m:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    :cond_2
    :goto_0
    return-void

    .line 448
    :cond_3
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->d()V

    .line 449
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getSelectedStoreItemUrlData()Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 450
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->f:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragmentDelegate;

    if-eqz p2, :cond_4

    invoke-interface {p2, p1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragmentDelegate;->a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;)V

    :cond_4
    return-void

    .line 453
    :cond_5
    sget-object p1, Lcom/callapp/contacts/loader/PersonalStoreItemDataManager;->a:Lcom/callapp/contacts/loader/PersonalStoreItemDataManager$Companion;

    const p3, 0x7fffffff

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->c:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    if-nez v0, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_6
    const-string v1, "666666"

    invoke-virtual {p1, v1, p2, p3, v0}, Lcom/callapp/contacts/loader/PersonalStoreItemDataManager$Companion;->a(Ljava/lang/String;Ljava/lang/String;ILcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->m:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    return-void

    .line 444
    :cond_7
    sget-object p1, Lcom/callapp/contacts/loader/PersonalStoreItemDataManager;->a:Lcom/callapp/contacts/loader/PersonalStoreItemDataManager$Companion;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->c:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    if-nez v2, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p1, p3, p2, v0, v2}, Lcom/callapp/contacts/loader/PersonalStoreItemDataManager$Companion;->a(Ljava/util/ArrayList;Ljava/lang/String;ILcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->m:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    .line 1620
    invoke-static {p0, p2}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->b(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;Ljava/lang/String;)V

    return-void

    .line 440
    :cond_9
    sget-object p1, Lcom/callapp/contacts/loader/PersonalStoreItemDataManager;->a:Lcom/callapp/contacts/loader/PersonalStoreItemDataManager$Companion;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->c:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    if-nez v2, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p1, p3, p2, v0, v2}, Lcom/callapp/contacts/loader/PersonalStoreItemDataManager$Companion;->a(Ljava/util/ArrayList;Ljava/lang/String;ILcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->m:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    .line 441
    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->d(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 3

    .line 483
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->i:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    check-cast v2, Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 484
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$startTrimActivity$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$startTrimActivity$1;-><init>(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;Landroid/net/Uri;Ljava/lang/String;I)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final synthetic a(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;Landroid/net/Uri;I)V
    .locals 40

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 3555
    new-instance v3, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    move-object v2, v3

    invoke-direct {v3}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;-><init>()V

    .line 3556
    new-instance v4, Landroid/text/SpannableString;

    move-object v3, v4

    const v5, 0x7f1204ea

    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const v21, 0x7f060088

    .line 3557
    invoke-static/range {v21 .. v21}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/high16 v4, 0x41600000    # 14.0f

    .line 3560
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    move-object/from16 v29, v9

    const/16 v4, 0x15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-instance v4, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$startPortraitModePopUp$dialogMessageWithTopImageNew$1;

    move-object/from16 v5, p1

    invoke-direct {v4, v0, v5, v1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$startPortraitModePopUp$dialogMessageWithTopImageNew$1;-><init>(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;Landroid/net/Uri;I)V

    move-object v10, v4

    check-cast v10, Landroid/view/View$OnClickListener;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v15, 0x28

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0x3e81e

    .line 3556
    invoke-static/range {v2 .. v20}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->a(Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;Landroid/text/SpannableString;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Landroid/view/View$OnClickListener;ZLjava/lang/Integer;ZZIIILjava/lang/Integer;Ljava/lang/Integer;I)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    move-result-object v22

    .line 3563
    new-instance v2, Landroid/text/SpannableString;

    move-object/from16 v23, v2

    const v3, 0x7f120080

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3564
    invoke-static/range {v21 .. v21}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v2, 0x13

    .line 3567
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    new-instance v2, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$startPortraitModePopUp$dialogMessageWithTopImageNew$2;

    invoke-direct {v2, v0, v1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$startPortraitModePopUp$dialogMessageWithTopImageNew$2;-><init>(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;I)V

    move-object/from16 v30, v2

    check-cast v30, Landroid/view/View$OnClickListener;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v31, 0x1

    const/16 v33, 0x1

    const/16 v34, 0x28

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const v39, 0x3e81e

    .line 3563
    invoke-static/range {v22 .. v39}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->a(Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;Landroid/text/SpannableString;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Landroid/view/View$OnClickListener;ZLjava/lang/Integer;ZIIILjava/lang/Integer;Ljava/lang/Integer;I)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    .line 3570
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 4425
    iput-object v2, v1, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->a:Ljava/lang/Float;

    const v2, 0x7f080467

    .line 3571
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->b(Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;Ljava/lang/Integer;)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    move-result-object v3

    const/16 v4, 0x50

    const/16 v5, 0x28

    const/16 v6, 0x28

    const/16 v7, 0x28

    const/4 v8, 0x0

    const/16 v9, 0x43

    .line 3572
    invoke-static/range {v3 .. v9}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->a(Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;IIIIZI)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    move-result-object v10

    const v1, 0x7f1203fd

    .line 3573
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/lang/CharSequence;

    const v1, 0x7f0601ec

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v14, 0x28

    const/16 v15, 0xe4

    invoke-static/range {v10 .. v15}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->a(Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;Ljava/lang/CharSequence;Ljava/lang/Integer;ZII)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    move-result-object v2

    const v3, 0x7f1207f7

    .line 3574
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0xf

    invoke-static {v2, v3, v1, v4}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->a(Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;Ljava/lang/CharSequence;Ljava/lang/Integer;I)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->a()Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;

    move-result-object v1

    .line 3575
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v1, Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-virtual {v2, v0, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method public static final synthetic a(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->a(Landroid/net/Uri;Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic a(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;Ljava/lang/String;)V
    .locals 0

    .line 4620
    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->b(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;ZLjava/lang/String;Ljava/lang/String;IZI)V
    .locals 8

    and-int/lit8 v0, p6, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object v5, p3

    :goto_1
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_2

    const/4 p5, 0x0

    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    move v7, p5

    :goto_2
    move-object v2, p0

    move v3, p1

    move v6, p4

    .line 502
    invoke-direct/range {v2 .. v7}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->a(ZLjava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method private final a(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 268
    sget-object v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment;->c:Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment$Companion;

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->c:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    if-nez v0, :cond_0

    const-string v1, "personalStoreItemType"

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1, p2, p3, v0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment$Companion;->a(Ljava/util/ArrayList;Ljava/lang/String;ILcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->v:Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment;

    if-eqz p1, :cond_1

    .line 270
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    if-eqz p2, :cond_1

    sget-object p3, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment;->c:Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment$Companion;

    invoke-virtual {p3}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment$Companion;->getTAG()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment;->a(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private a(ZLjava/lang/String;Ljava/lang/String;IZ)V
    .locals 8

    .line 507
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->c:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    const-string v1, "personalStoreItemType"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    sget-object v2, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    if-ne v0, v2, :cond_1

    .line 508
    sget-object v0, Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;->VIDEO:Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;

    goto :goto_0

    .line 510
    :cond_1
    sget-object v0, Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;->IMAGE:Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;

    :goto_0
    const/4 v2, 0x0

    if-eqz p1, :cond_6

    .line 513
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v3, 0x7f0d00cc

    invoke-virtual {p1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 514
    iget-object v3, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->c:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    if-nez v3, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_2
    sget-object v4, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    if-ne v3, v4, :cond_3

    const v3, 0x7f1207f7

    .line 515
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Activities.getString(R.string.upload_portrait)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const v3, 0x7f1207f6

    .line 517
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Activities.getString(R.string.upload_landscape)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 519
    :goto_1
    iget-object v4, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->c:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    if-nez v4, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_4
    sget-object v5, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    if-ne v4, v5, :cond_5

    const v4, 0x7f080467

    goto :goto_2

    :cond_5
    const v4, 0x7f0804fe

    :goto_2
    const v5, 0x7f0a0428

    .line 525
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v6, Landroid/widget/TextView;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f0601cc

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const v3, 0x7f0a0429

    .line 527
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v5, "null cannot be cast to non-null type android.view.View"

    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const v5, 0x7f0600f3

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    const v3, 0x7f0a0427

    .line 528
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v5, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 529
    new-instance v3, Lcom/callapp/contacts/popup/ChooseImageSourceDialog;

    invoke-direct {v3, p1, v0}, Lcom/callapp/contacts/popup/ChooseImageSourceDialog;-><init>(Landroid/view/View;Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;)V

    goto :goto_3

    .line 531
    :cond_6
    new-instance v3, Lcom/callapp/contacts/popup/ChooseImageSourceDialog;

    invoke-direct {v3, v0}, Lcom/callapp/contacts/popup/ChooseImageSourceDialog;-><init>(Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;)V

    .line 533
    :goto_3
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->g:Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;

    if-nez p1, :cond_7

    .line 534
    new-instance p1, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;

    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-direct {p1, v0}, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->g:Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;

    .line 536
    :cond_7
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->g:Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;

    if-eqz p1, :cond_8

    invoke-virtual {p1, p4}, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->setFlowType(I)V

    .line 537
    :cond_8
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->g:Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;

    if-eqz p1, :cond_9

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->setUpdatePersonalStoreItemUrl(Ljava/lang/String;)V

    .line 538
    :cond_9
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->g:Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;

    if-eqz p1, :cond_a

    invoke-virtual {p1, p3}, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->setContactId(Ljava/lang/String;)V

    .line 539
    :cond_a
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->c:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    if-nez p1, :cond_b

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_b
    sget-object p2, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->COVER:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    if-ne p1, p2, :cond_d

    if-nez p5, :cond_c

    .line 541
    iput-object v2, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->h:Ljava/util/UUID;

    .line 542
    iput-object v2, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->r:Ljava/lang/String;

    .line 544
    :cond_c
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->g:Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;

    if-eqz p1, :cond_d

    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getFileUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->setCameraPhotoFile(Landroid/net/Uri;)V

    .line 549
    :cond_d
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->g:Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;

    check-cast p1, Lcom/callapp/contacts/popup/ChooseImageSourceDialog$OnChooseImageSourceClickListener;

    invoke-virtual {v3, p1}, Lcom/callapp/contacts/popup/ChooseImageSourceDialog;->setListener(Lcom/callapp/contacts/popup/ChooseImageSourceDialog$OnChooseImageSourceClickListener;)V

    .line 550
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast v3, Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-virtual {p1, p2, v3}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method private static synthetic b(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x64

    .line 267
    invoke-direct {p0, v0, p1, v1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic c()I
    .locals 1

    .line 71
    sget v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->y:I

    return v0
.end method

.method public static final synthetic c(I)V
    .locals 0

    .line 71
    sput p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->y:I

    return-void
.end method

.method private d()V
    .locals 4

    .line 199
    sget v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->y:I

    if-ltz v0, :cond_1

    .line 200
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getViewAtPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0a0a9d

    .line 201
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->e:Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;

    if-eqz v1, :cond_0

    sget v2, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->y:I

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;->getItemAtPosition(I)Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->getPersonalStoreItemUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->e:Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0, v1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->e:Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;

    if-eqz v0, :cond_1

    sget v1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->y:I

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method

.method private final d(Ljava/lang/String;)V
    .locals 43

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 579
    iget-object v2, v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->c:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    if-nez v2, :cond_0

    const-string v3, "personalStoreItemType"

    invoke-static {v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    sget-object v3, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    if-ne v2, v3, :cond_1

    const v2, 0x7f120533

    .line 580
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Activities.getString(R.s\u2026ease_choose_assign_video)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const v2, 0x7f120532

    .line 582
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Activities.getString(R.s\u2026ease_choose_assign_cover)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 586
    :goto_0
    new-instance v4, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    move-object v3, v4

    invoke-direct {v4}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;-><init>()V

    .line 587
    new-instance v5, Landroid/text/SpannableString;

    move-object v4, v5

    const v6, 0x7f1200bc

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const v21, 0x7f060088

    .line 588
    invoke-static/range {v21 .. v21}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v22, 0x7f08058d

    .line 589
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v23, 0x7f060244

    .line 593
    invoke-static/range {v23 .. v23}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 594
    new-instance v10, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$startAssignContactOrAllPopUp$dialogMessageWithTopImageNew$1;

    invoke-direct {v10, v0, v1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$startAssignContactOrAllPopUp$dialogMessageWithTopImageNew$1;-><init>(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;Ljava/lang/String;)V

    move-object v11, v10

    check-cast v11, Landroid/view/View$OnClickListener;

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v15, 0x28

    const/16 v16, 0x0

    const/16 v17, 0xf

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0x36b58

    .line 587
    invoke-static/range {v3 .. v20}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->a(Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;Landroid/text/SpannableString;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Landroid/view/View$OnClickListener;ZLjava/lang/Integer;ZIIILjava/lang/Integer;Ljava/lang/Integer;I)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    move-result-object v24

    .line 601
    new-instance v3, Landroid/text/SpannableString;

    move-object/from16 v25, v3

    const v4, 0x7f1200bd

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 602
    invoke-static/range {v21 .. v21}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    .line 603
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    .line 607
    invoke-static/range {v23 .. v23}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    .line 608
    new-instance v3, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$startAssignContactOrAllPopUp$dialogMessageWithTopImageNew$2;

    invoke-direct {v3, v0, v1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$startAssignContactOrAllPopUp$dialogMessageWithTopImageNew$2;-><init>(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;Ljava/lang/String;)V

    move-object/from16 v32, v3

    check-cast v32, Landroid/view/View$OnClickListener;

    const/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x1

    const/16 v36, 0x0

    const/16 v37, 0x28

    const/16 v38, 0xf

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const v42, 0x3ab58

    .line 601
    invoke-static/range {v24 .. v42}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->a(Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;Landroid/text/SpannableString;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Landroid/view/View$OnClickListener;ZLjava/lang/Integer;ZZIIILjava/lang/Integer;Ljava/lang/Integer;I)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    move-result-object v3

    const/16 v4, 0x1e

    const/16 v5, 0x1e

    const/16 v6, 0x14

    const/16 v7, 0x14

    const/4 v8, 0x0

    const/16 v9, 0x43

    .line 611
    invoke-static/range {v3 .. v9}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->a(Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;IIIIZI)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    move-result-object v10

    const v1, 0x7f120531

    .line 612
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/lang/CharSequence;

    const v1, 0x7f0601ec

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v15, 0xf4

    invoke-static/range {v10 .. v15}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->a(Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;Ljava/lang/CharSequence;Ljava/lang/Integer;ZII)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    move-result-object v3

    .line 613
    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0xf

    invoke-static {v3, v2, v1, v4}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->a(Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;Ljava/lang/CharSequence;Ljava/lang/Integer;I)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->a()Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;

    move-result-object v1

    .line 616
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v1, Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-virtual {v2, v3, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method private final getFileUri()Landroid/net/Uri;
    .locals 4

    .line 425
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->r:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 426
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->h:Ljava/util/UUID;

    if-nez v0, :cond_0

    .line 427
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->h:Ljava/util/UUID;

    .line 429
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 430
    new-instance v0, Ljava/io/File;

    const-string v1, "CallAppMedia"

    invoke-static {v1}, Lcom/callapp/contacts/util/IoUtils;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->s:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->h:Ljava/util/UUID;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 429
    :goto_0
    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->r:Ljava/lang/String;

    .line 434
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->r:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 731
    sget v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->y:I

    add-int/lit8 v0, v0, 0x1

    .line 732
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->e:Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;->getItemCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 733
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_1

    const-string v2, "recyclerView"

    invoke-static {v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->d(I)V

    :cond_2
    return-void
.end method

.method public final a(I)V
    .locals 1

    .line 193
    sput p1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->y:I

    .line 194
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->e:Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;->getItemAtPosition(I)Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 195
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->f:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragmentDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragmentDelegate;->a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;)V

    :cond_1
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "names"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 468
    new-instance v0, Lcom/shehabic/droppy/DroppyMenuPopup$a;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/shehabic/droppy/DroppyMenuPopup$a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 469
    new-instance p1, Lcom/shehabic/droppy/b;

    const v1, 0x7f0d023f

    invoke-direct {p1, v1}, Lcom/shehabic/droppy/b;-><init>(I)V

    .line 470
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/shehabic/droppy/b;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/widget/TextView;

    .line 471
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0601ec

    .line 472
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 473
    check-cast p1, Lcom/shehabic/droppy/d;

    invoke-virtual {v0, p1}, Lcom/shehabic/droppy/DroppyMenuPopup$a;->a(Lcom/shehabic/droppy/d;)Lcom/shehabic/droppy/DroppyMenuPopup$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shehabic/droppy/DroppyMenuPopup$a;->c()Lcom/shehabic/droppy/DroppyMenuPopup;

    move-result-object p1

    .line 474
    invoke-virtual {p1}, Lcom/shehabic/droppy/DroppyMenuPopup;->b()V

    const-string p2, "droppyMenuPopup"

    .line 475
    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/shehabic/droppy/DroppyMenuPopup;->a()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const p2, 0x7f08006f

    const v0, 0x7f060026

    .line 477
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    const v1, 0x7f0600f3

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v2

    float-to-int v2, v2

    .line 476
    invoke-static {p1, p2, v0, v1, v2}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;)V
    .locals 39

    move-object/from16 v0, p1

    const-string v1, "personalStoreItemUrlData"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    new-instance v1, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    move-object v2, v1

    invoke-direct {v1}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;-><init>()V

    .line 233
    new-instance v1, Landroid/text/SpannableString;

    move-object v3, v1

    const v4, 0x7f120878

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-direct {v1, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const v1, 0x7f060088

    .line 234
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/high16 v4, 0x41600000    # 14.0f

    .line 237
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    move-object/from16 v28, v9

    const/16 v4, 0x11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v31, v12

    new-instance v4, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onDeleteClicked$areYouSureDialog$1;

    move-object/from16 v15, p0

    invoke-direct {v4, v15, v0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onDeleteClicked$areYouSureDialog$1;-><init>(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;)V

    move-object v10, v4

    check-cast v10, Landroid/view/View$OnClickListener;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v0, 0x28

    move v15, v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0x3e81e

    .line 233
    invoke-static/range {v2 .. v20}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->a(Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;Landroid/text/SpannableString;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Landroid/view/View$OnClickListener;ZLjava/lang/Integer;ZZIIILjava/lang/Integer;Ljava/lang/Integer;I)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    move-result-object v21

    .line 242
    new-instance v0, Landroid/text/SpannableString;

    move-object/from16 v22, v0

    const v2, 0x7f1204c5

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 243
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    .line 246
    sget-object v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onDeleteClicked$areYouSureDialog$2;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onDeleteClicked$areYouSureDialog$2;

    move-object/from16 v29, v0

    check-cast v29, Landroid/view/View$OnClickListener;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v30, 0x1

    const/16 v32, 0x1

    const/16 v33, 0x28

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const v38, 0x3e81e

    .line 242
    invoke-static/range {v21 .. v38}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->a(Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;Landroid/text/SpannableString;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Landroid/view/View$OnClickListener;ZLjava/lang/Integer;ZIIILjava/lang/Integer;Ljava/lang/Integer;I)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    move-result-object v0

    const/16 v1, 0x1e

    const/16 v2, 0x1e

    const/16 v3, 0x14

    const/16 v4, 0x14

    const/4 v5, 0x0

    const/16 v6, 0x43

    .line 248
    invoke-static/range {v0 .. v6}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->a(Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;IIIIZI)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    move-result-object v7

    const v0, 0x7f1203fd

    .line 249
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/CharSequence;

    const v0, 0x7f0601ec

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v12, 0xf4

    invoke-static/range {v7 .. v12}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->a(Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;Ljava/lang/CharSequence;Ljava/lang/Integer;ZII)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->a()Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;

    move-result-object v0

    .line 250
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v0, Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 689
    new-instance v0, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-direct {v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;-><init>()V

    const v1, 0x7f120537

    .line 690
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 691
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setCancelable(Z)V

    .line 692
    new-instance v1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onStarted$$inlined$apply$lambda$1;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onStarted$$inlined$apply$lambda$1;-><init>(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;Ljava/lang/String;)V

    check-cast v1, Lcom/callapp/contacts/popup/contact/CallAppDialogEvents;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setCallAppDialogEvents(Lcom/callapp/contacts/popup/contact/CallAppDialogEvents;)V

    .line 697
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    .line 689
    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->q:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    .line 698
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->q:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    check-cast v1, Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method public final a(Ljava/lang/String;F)V
    .locals 2

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 703
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->q:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    if-eqz p1, :cond_0

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f120635

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float p2, p2, v1

    float-to-int p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "%)"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 709
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->q:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    .line 710
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const v0, 0x7f1207eb

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3111
    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 711
    invoke-static {p2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 737
    sget v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->y:I

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 739
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const-string v1, "recyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    sget v1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->y:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->d(I)V

    :cond_1
    return-void
.end method

.method public final b(I)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x16

    move-object v0, p0

    move v4, p1

    .line 464
    invoke-static/range {v0 .. v6}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->a(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;ZLjava/lang/String;Ljava/lang/String;IZI)V

    return-void
.end method

.method public final b(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;)V
    .locals 4

    const-string v0, "personalStoreItemUrlData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->getType()I

    move-result v0

    if-nez v0, :cond_1

    .line 256
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->getPersonalStoreItemUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->d(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 258
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 259
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->getPersonalStoreItemUserData()Lio/objectbox/relation/ToMany;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/relation/ToMany;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;

    const-string v3, "videoRingtoneData"

    .line 260
    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUserData;->getPhoneOrIdKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    :cond_2
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->getPersonalStoreItemUrl()Ljava/lang/String;

    move-result-object p1

    const-string v1, "personalStoreItemUrlData.personalStoreItemUrl"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xc8

    invoke-direct {p0, v0, p1, v1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 715
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->q:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    .line 717
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f1201d7

    .line 718
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f120418

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 719
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallAppDomain()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f1207f9

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    .line 721
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 722
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getShareVideoTempFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Landroid/os/Parcelable;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 723
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0x7f120637

    .line 724
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "video/mp4"

    .line 725
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0x7f120629

    .line 727
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x12c

    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final c(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;)V
    .locals 5

    const-string v0, "personalStoreItemUrlData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->c:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    if-nez v1, :cond_0

    const-string v2, "personalStoreItemType"

    invoke-static {v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {v1}, Lcom/callapp/contacts/activity/marketplace/PersonalStoreItemHelper;->a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Personal Store Item"

    const-string v3, "ClickShare"

    invoke-virtual {v0, v2, v3, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->getPersonalStoreItemDetailsData()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 279
    new-instance v3, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;

    check-cast v2, Ljava/util/List;

    new-instance v4, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1;

    invoke-direct {v4, p0, p1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1;-><init>(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;)V

    check-cast v4, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$ShareVideoRingtonePopUpInterface;

    .line 307
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->getType()I

    move-result p1

    .line 279
    invoke-direct {v3, v2, v4, p1}, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;-><init>(Ljava/util/List;Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$ShareVideoRingtonePopUpInterface;I)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 278
    :goto_0
    check-cast v3, Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-virtual {v0, v1, v3}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 684
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->q:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    .line 685
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const v0, 0x7f1201ac

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2111
    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public final getAssignPersonalStoreItemAdapter()Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->e:Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;

    return-object v0
.end method

.method public final getAutoShareVideo()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->p:Z

    return v0
.end method

.method public final getChooseImageSourceDialogListener()Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->g:Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;

    return-object v0
.end method

.method public final getCurrentAssignFlow()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->t:I

    return v0
.end method

.method public final getPersonalStoreItemDelegate()Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragmentDelegate;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->f:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragmentDelegate;

    return-object v0
.end method

.method public final getPickVideoProgressDialog()Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->j:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    return-object v0
.end method

.method public final getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const-string v1, "recyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getSelectedItemUri()Landroid/net/Uri;
    .locals 2

    .line 215
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getSelectedStoreItemUrlData()Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->getPersonalStoreItemUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 217
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public final getSelectedItemUrl()Ljava/lang/String;
    .locals 1

    .line 211
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getSelectedStoreItemUrlData()Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->getPersonalStoreItemUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSelectedStoreItemUrlData()Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;
    .locals 3

    .line 224
    sget v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->y:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 225
    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->e:Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;->getItemAtPosition(I)Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public final getShareVideoTempFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->u:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public final getSnapOnScrollListener()Lcom/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->l:Lcom/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener;

    return-object v0
.end method

.method public final getTransformationBuilder()Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->w:Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;

    return-object v0
.end method

.method public final getViewAtPosition(I)Landroid/view/View;
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const-string v1, "recyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final isInterrupted()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->k:Z

    return v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .line 313
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 314
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->i:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    .line 315
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->j:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    const/16 v0, -0x64

    if-ne p2, v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->g:Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->a()V

    :cond_0
    const/16 v0, 0x12c

    if-ne p1, v0, :cond_1

    .line 320
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getShareVideoTempFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/IoUtils;->b(Ljava/io/File;)Z

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->g:Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->getFlowType()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 323
    :goto_0
    iput v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->t:I

    const/16 v0, 0x64

    const-string v2, "video"

    const-string v3, "contacts"

    const-string v4, "SelectedVideo"

    const-string v5, "AssignContactsId"

    const-string v6, "personalStoreItemType"

    const/4 v7, 0x1

    if-eq p1, v0, :cond_b

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_9

    const/16 v0, 0x156

    if-eq p1, v0, :cond_8

    const/16 v0, 0x3a98

    const/4 v1, -0x1

    if-eq p1, v0, :cond_7

    const/16 v0, 0x3e80

    if-eq p1, v0, :cond_6

    const/16 v0, 0x4e20

    if-eq p1, v0, :cond_4

    const/16 v0, 0x61a8

    if-eq p1, v0, :cond_3

    const/16 v0, 0x6590

    if-eq p1, v0, :cond_6

    goto/16 :goto_2

    :cond_3
    if-ne p2, v1, :cond_f

    if-eqz p3, :cond_f

    .line 398
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 399
    move-object p2, p0

    check-cast p2, Landroidx/fragment/app/Fragment;

    .line 400
    new-instance p3, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;

    invoke-direct {p3}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;-><init>()V

    .line 401
    invoke-virtual {p3, v7}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->setIsFromGallery(Z)Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;

    move-result-object p3

    .line 402
    invoke-virtual {p3, p1}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->setImagePathUri(Landroid/net/Uri;)Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;

    move-result-object p1

    .line 403
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getFileUri()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->setSavePathUri(Landroid/net/Uri;)Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;

    move-result-object p1

    .line 399
    invoke-static {p2, p1}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->a(Landroidx/fragment/app/Fragment;Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;)V

    goto/16 :goto_2

    :cond_4
    const/16 p1, 0x3e8

    if-ne p2, p1, :cond_f

    if-eqz p3, :cond_f

    .line 411
    invoke-static {p3}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->a(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 412
    iget p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->t:I

    .line 413
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->r:Ljava/lang/String;

    invoke-static {p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->g:Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->getContactId()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_5
    const/4 p3, 0x0

    .line 412
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    if-ne p2, v1, :cond_f

    if-eqz p3, :cond_f

    .line 349
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 350
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    new-instance p3, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onActivityResult$$inlined$let$lambda$1;

    invoke-direct {p3, p1, p0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onActivityResult$$inlined$let$lambda$1;-><init>(Landroid/net/Uri;Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;)V

    check-cast p3, Ljava/lang/Runnable;

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :cond_7
    if-ne p2, v1, :cond_f

    .line 386
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getFileUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 387
    move-object p2, p0

    check-cast p2, Landroidx/fragment/app/Fragment;

    .line 388
    new-instance p3, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;

    invoke-direct {p3}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;-><init>()V

    .line 389
    invoke-virtual {p3, p1}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->setImagePathUri(Landroid/net/Uri;)Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;

    move-result-object p3

    .line 390
    invoke-virtual {p3, p1}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->setSavePathUri(Landroid/net/Uri;)Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;

    move-result-object p1

    .line 387
    invoke-static {p2, p1}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->a(Landroidx/fragment/app/Fragment;Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;)V

    goto/16 :goto_2

    :cond_8
    if-eqz p3, :cond_f

    .line 377
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_f

    const-string p2, "EXTRA_ASSIGN_FLOW"

    .line 378
    invoke-virtual {p3, p2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 379
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "it.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "EXTRA_CONTACT_ID"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 378
    invoke-direct {p0, p2, p1, p3}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    if-eqz p3, :cond_f

    .line 339
    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 340
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 341
    sget-object p3, Lcom/callapp/contacts/loader/PersonalStoreItemDataManager;->a:Lcom/callapp/contacts/loader/PersonalStoreItemDataManager$Companion;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->c:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    if-nez v0, :cond_a

    invoke-static {v6}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p3, p1, p2, v7, v0}, Lcom/callapp/contacts/loader/PersonalStoreItemDataManager$Companion;->a(Ljava/util/ArrayList;Ljava/lang/String;ILcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->m:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    goto :goto_2

    :cond_b
    if-eqz p3, :cond_f

    .line 327
    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 328
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 329
    iget-object p3, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->c:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    if-nez p3, :cond_c

    invoke-static {v6}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_c
    sget-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    if-ne p3, v0, :cond_d

    .line 330
    iput-boolean v7, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->p:Z

    .line 332
    :cond_d
    sget-object p3, Lcom/callapp/contacts/loader/PersonalStoreItemDataManager;->a:Lcom/callapp/contacts/loader/PersonalStoreItemDataManager$Companion;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->c:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    if-nez v0, :cond_e

    invoke-static {v6}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {p3, p1, p2, v7, v0}, Lcom/callapp/contacts/loader/PersonalStoreItemDataManager$Companion;->a(Ljava/util/ArrayList;Ljava/lang/String;ILcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->m:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    .line 420
    :cond_f
    :goto_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->v:Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment;->a()V

    :cond_10
    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 122
    instance-of v0, p1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragmentDelegate;

    if-eqz v0, :cond_0

    .line 123
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragmentDelegate;

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->f:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragmentDelegate;

    :cond_0
    return-void
.end method

.method public final synthetic onChanged(Ljava/lang/Object;)V
    .locals 6

    .line 71
    check-cast p1, Ljava/util/List;

    const-string v0, "personalStoreItemUrlData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1625
    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/a/n;->d(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 1627
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1628
    new-instance v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    const v1, 0x7f0804fb

    invoke-static {v1}, Lcom/callapp/contacts/util/ImageUtils;->getResourceUri(I)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, -0x80000000

    iget-object v4, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->c:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    const-string v5, "personalStoreItemType"

    if-nez v4, :cond_0

    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    invoke-direct {v0, v2, v3, v4}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;-><init>(Ljava/lang/String;ILcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1630
    sget-object v0, Lcom/callapp/contacts/loader/PersonalStoreItemDataManager;->a:Lcom/callapp/contacts/loader/PersonalStoreItemDataManager$Companion;

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->c:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    if-nez v0, :cond_1

    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_1
    invoke-static {v0}, Lcom/callapp/contacts/loader/PersonalStoreItemDataManager$Companion;->a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1632
    new-instance v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    invoke-static {v1}, Lcom/callapp/contacts/util/ImageUtils;->getResourceUri(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    iget-object v3, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->c:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    if-nez v3, :cond_2

    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_2
    invoke-direct {v0, v1, v2, v3}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;-><init>(Ljava/lang/String;ILcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1636
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "recyclerView"

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 1637
    sput v2, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->y:I

    const/4 v0, 0x0

    .line 1638
    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->m:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    .line 1639
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_4
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 1641
    :cond_5
    sput v3, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->y:I

    .line 1642
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 1645
    :goto_0
    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onChanged$$inlined$compareByDescending$1;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onChanged$$inlined$compareByDescending$1;-><init>()V

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p1, v0}, Lkotlin/a/n;->a(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 1647
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->m:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    if-eqz v0, :cond_9

    .line 1746
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1747
    check-cast v1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    .line 1648
    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->getPersonalStoreItemUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->m:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    invoke-static {v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->getPersonalStoreItemUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v2, v3

    goto :goto_2

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1751
    :cond_8
    :goto_2
    sput v2, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->y:I

    .line 1651
    :cond_9
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->e:Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;->setPersonalStoreItemDataList(Ljava/util/List;)V

    .line 1652
    :cond_a
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->f:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragmentDelegate;

    if-eqz v0, :cond_b

    invoke-interface {v0, p1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragmentDelegate;->b(Ljava/util/List;)V

    .line 1654
    :cond_b
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onChanged$2;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onChanged$2;-><init>(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;Ljava/util/List;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 135
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "PERSONAL_STORE_URL_DATA_ARGUMENT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "null cannot be cast to non-null type com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData.PersonalStoreItemType"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->c:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d02d7

    const/4 v0, 0x0

    .line 141
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->d:Landroid/view/View;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const p3, 0x7f0a0345

    .line 142
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    const-string p3, "recyclerView"

    if-nez p1, :cond_1

    .line 143
    invoke-static {p3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 144
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 145
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_2

    invoke-static {p3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_2
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 146
    new-instance p1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    move-object v2, p0

    check-cast v2, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$OnItemClickListener;

    invoke-direct {p1, v1, v2}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;-><init>(Ljava/util/List;Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter$OnItemClickListener;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->e:Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;

    .line 147
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_3

    invoke-static {p3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_3
    new-instance v1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onCreateView$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onCreateView$1;-><init>(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$j;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$j;)V

    .line 160
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_4

    invoke-static {p3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->e:Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 161
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->e:Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;

    if-eqz p1, :cond_5

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onCreateView$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onCreateView$2;-><init>(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$c;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemAdapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$c;)V

    .line 170
    :cond_5
    new-instance p1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper;

    invoke-direct {p1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper;-><init>()V

    .line 171
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_6

    invoke-static {p3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 172
    new-instance v1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener;

    move-object v3, p1

    check-cast v3, Landroidx/recyclerview/widget/o;

    sget-object v4, Lcom/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener$Behavior;->NOTIFY_ON_SCROLL_STATE_IDLE:Lcom/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener$Behavior;

    move-object v5, p0

    check-cast v5, Lcom/callapp/contacts/activity/marketplace/videoRingtone/OnSnapPositionChangeListener;

    const v6, 0x7f08006f

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener;-><init>(Landroidx/recyclerview/widget/o;Lcom/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener$Behavior;Lcom/callapp/contacts/activity/marketplace/videoRingtone/OnSnapPositionChangeListener;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->l:Lcom/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener;

    .line 173
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_7

    invoke-static {p3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_7
    iget-object p3, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->l:Lcom/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener;

    invoke-static {p3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$m;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 174
    new-instance p1, Landroidx/lifecycle/ab;

    move-object p3, p0

    check-cast p3, Landroidx/lifecycle/ad;

    invoke-direct {p1, p3}, Landroidx/lifecycle/ab;-><init>(Landroidx/lifecycle/ad;)V

    const-class p3, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemViewModel;

    invoke-virtual {p1, p3}, Landroidx/lifecycle/ab;->a(Ljava/lang/Class;)Landroidx/lifecycle/aa;

    move-result-object p1

    const-string p3, "ViewModelProvider(this).\u2026temViewModel::class.java)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemViewModel;

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->x:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemViewModel;

    if-nez p1, :cond_8

    const-string p3, "viewModel"

    .line 176
    invoke-static {p3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_8
    iget-object p3, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->c:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    if-nez p3, :cond_9

    const-string v1, "personalStoreItemType"

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_9
    const-string v1, "personalType"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1014
    iget-object v1, p1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemViewModel;->a:Lio/objectbox/a/a;

    if-nez v1, :cond_a

    .line 1015
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const-string v2, "CallAppApplication.get()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    invoke-virtual {v1, v2}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v1

    .line 1016
    new-instance v2, Lio/objectbox/a/a;

    invoke-virtual {v1}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v3, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_;->personalStoreItemType:Lio/objectbox/g;

    invoke-virtual {p3}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->ordinal()I

    move-result p3

    int-to-long v4, p3

    invoke-virtual {v1, v3, v4, v5}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object p3

    invoke-virtual {p3}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p3

    invoke-direct {v2, p3}, Lio/objectbox/a/a;-><init>(Lio/objectbox/query/Query;)V

    iput-object v2, p1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemViewModel;->a:Lio/objectbox/a/a;

    .line 1018
    :cond_a
    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemViewModel;->a:Lio/objectbox/a/a;

    const-string p3, "null cannot be cast to non-null type io.objectbox.android.ObjectBoxLiveData<com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData>"

    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 176
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getViewLifecycleOwner()Landroidx/lifecycle/p;

    move-result-object p3

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/u;

    invoke-virtual {p1, p3, v1}, Lio/objectbox/a/a;->a(Landroidx/lifecycle/p;Landroidx/lifecycle/u;)V

    .line 178
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->o:Landroid/net/Uri;

    if-eqz p1, :cond_b

    .line 179
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->a(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 181
    :cond_b
    iget-object v4, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->n:Ljava/lang/String;

    if-eqz v4, :cond_c

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v7, 0x12

    move-object v1, p0

    .line 182
    invoke-static/range {v1 .. v7}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->a(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;ZLjava/lang/String;Ljava/lang/String;IZI)V

    .line 184
    :cond_c
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->i:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    const p2, 0x7f120537

    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 185
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->i:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setCancelable(Z)V

    .line 186
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->j:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 187
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->j:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setCancelable(Z)V

    .line 189
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->d:Landroid/view/View;

    return-object p1
.end method

.method public final onDestroy()V
    .locals 1

    .line 677
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const/4 v0, 0x1

    .line 678
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->k:Z

    .line 679
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->i:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    .line 680
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->j:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    return-void
.end method

.method public final onDetach()V
    .locals 2

    .line 128
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 129
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->g:Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->setFragmentWeakReference(Ljava/lang/ref/WeakReference;)V

    :cond_0
    return-void
.end method

.method public final setAutoShareVideo(Z)V
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->p:Z

    return-void
.end method

.method public final setChooseVideoOnStart(Landroid/net/Uri;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->o:Landroid/net/Uri;

    return-void
.end method

.method public final setContactIdChooseVideoOnStart(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->n:Ljava/lang/String;

    return-void
.end method

.method public final setCoverFilePath(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->r:Ljava/lang/String;

    return-void
.end method

.method public final setLastAddedPersonalStoreItemData(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->m:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    return-void
.end method

.method public final setTransformationBuilder(Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->w:Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;

    return-void
.end method
