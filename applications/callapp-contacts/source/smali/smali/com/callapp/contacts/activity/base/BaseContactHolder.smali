.class public abstract Lcom/callapp/contacts/activity/base/BaseContactHolder;
.super Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;,
        Lcom/callapp/contacts/activity/base/BaseContactHolder$OnDataLoadListener;
    }
.end annotation


# static fields
.field private static v:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected s:Z

.field public t:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

.field private final u:Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;-><init>(Landroid/view/View;)V

    .line 41
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseContactHolder;->l()Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder;->u:Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;

    .line 42
    sget-object p1, Lcom/callapp/contacts/activity/base/BaseContactHolder;->v:Ljava/util/Set;

    if-nez p1, :cond_0

    .line 43
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    sput-object p1, Lcom/callapp/contacts/activity/base/BaseContactHolder;->v:Ljava/util/Set;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/base/BaseContactHolder;)Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder;->u:Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;

    return-object p0
.end method

.method protected static a(Ljava/lang/String;)Z
    .locals 1

    .line 164
    sget-object v0, Lcom/callapp/contacts/activity/base/BaseContactHolder;->v:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic m()Ljava/util/Set;
    .locals 1

    .line 23
    sget-object v0, Lcom/callapp/contacts/activity/base/BaseContactHolder;->v:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/base/ScrollEvents;JLcom/callapp/framework/phone/Phone;)V
    .locals 10

    .line 168
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v9, Lcom/callapp/contacts/activity/base/BaseContactHolder$1;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object/from16 v5, p6

    move-wide v6, p4

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/callapp/contacts/activity/base/BaseContactHolder$1;-><init>(Lcom/callapp/contacts/activity/base/BaseContactHolder;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;JLcom/callapp/contacts/activity/base/ScrollEvents;)V

    invoke-virtual {v0, v9}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(ZLcom/callapp/framework/phone/Phone;)V
    .locals 0

    .line 154
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/base/BaseContactHolder;->a(Lcom/callapp/framework/phone/Phone;)Z

    move-result p2

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    .line 156
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder;->u:Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;

    const/16 p2, 0xfa

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->schedule(I)Lcom/callapp/contacts/manager/task/Task;

    return-void

    .line 158
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder;->u:Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_1
    return-void
.end method

.method protected a(Lcom/callapp/framework/phone/Phone;)Z
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder;->t:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Lcom/callapp/framework/phone/Phone;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected abstract getLoaderLoadFields()Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;
.end method

.method protected abstract l()Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;
.end method

.method public setOnDataLoadListener(Lcom/callapp/contacts/activity/base/BaseContactHolder$OnDataLoadListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 197
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder;->r:Lcom/callapp/contacts/activity/base/BaseContactHolder$OnDataLoadListener;

    :cond_0
    return-void
.end method
