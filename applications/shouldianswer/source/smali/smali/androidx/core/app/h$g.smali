.class public final Landroidx/core/app/h$g;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Landroidx/core/app/h$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/h$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Landroid/app/PendingIntent;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/graphics/Bitmap;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3887
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/h$g;->a:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 3888
    iput v0, p0, Landroidx/core/app/h$g;->b:I

    .line 3890
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/h$g;->d:Ljava/util/ArrayList;

    const v0, 0x800005

    .line 3893
    iput v0, p0, Landroidx/core/app/h$g;->g:I

    const/4 v0, -0x1

    .line 3894
    iput v0, p0, Landroidx/core/app/h$g;->h:I

    const/4 v0, 0x0

    .line 3895
    iput v0, p0, Landroidx/core/app/h$g;->i:I

    const/16 v0, 0x50

    .line 3897
    iput v0, p0, Landroidx/core/app/h$g;->k:I

    return-void
.end method

.method private static a(Landroidx/core/app/h$a;)Landroid/app/Notification$Action;
    .locals 4

    .line 4028
    new-instance v0, Landroid/app/Notification$Action$Builder;

    .line 4029
    invoke-virtual {p0}, Landroidx/core/app/h$a;->a()I

    move-result v1

    invoke-virtual {p0}, Landroidx/core/app/h$a;->b()Ljava/lang/CharSequence;

    move-result-object v2

    .line 4030
    invoke-virtual {p0}, Landroidx/core/app/h$a;->c()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 4032
    invoke-virtual {p0}, Landroidx/core/app/h$a;->d()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4033
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Landroidx/core/app/h$a;->d()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    .line 4035
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4038
    :goto_0
    invoke-virtual {p0}, Landroidx/core/app/h$a;->e()Z

    move-result v2

    const-string v3, "android.support.allowGeneratedReplies"

    .line 4037
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4039
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    .line 4040
    invoke-virtual {p0}, Landroidx/core/app/h$a;->e()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    .line 4042
    :cond_1
    invoke-virtual {v0, v1}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 4043
    invoke-virtual {p0}, Landroidx/core/app/h$a;->f()[Landroidx/core/app/k;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 4045
    invoke-static {p0}, Landroidx/core/app/k;->a([Landroidx/core/app/k;)[Landroid/app/RemoteInput;

    move-result-object p0

    .line 4046
    array-length v1, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 4047
    invoke-virtual {v0, v3}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4050
    :cond_2
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0
.end method

.method private a(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 4668
    iget p2, p0, Landroidx/core/app/h$g;->b:I

    or-int/2addr p1, p2

    iput p1, p0, Landroidx/core/app/h$g;->b:I

    goto :goto_0

    .line 4670
    :cond_0
    iget p2, p0, Landroidx/core/app/h$g;->b:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Landroidx/core/app/h$g;->b:I

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroidx/core/app/h$d;)Landroidx/core/app/h$d;
    .locals 8

    .line 3962
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3964
    iget-object v1, p0, Landroidx/core/app/h$g;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3965
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "actions"

    const/16 v3, 0x10

    if-lt v1, v3, :cond_3

    .line 3966
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/core/app/h$g;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 3967
    iget-object v4, p0, Landroidx/core/app/h$g;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/core/app/h$a;

    .line 3968
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x14

    if-lt v6, v7, :cond_1

    .line 3970
    invoke-static {v5}, Landroidx/core/app/h$g;->a(Landroidx/core/app/h$a;)Landroid/app/Notification$Action;

    move-result-object v5

    .line 3969
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3971
    :cond_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v3, :cond_0

    .line 3972
    invoke-static {v5}, Landroidx/core/app/j;->a(Landroidx/core/app/h$a;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3975
    :cond_2
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 3977
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3980
    :cond_4
    :goto_1
    iget v1, p0, Landroidx/core/app/h$g;->b:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const-string v2, "flags"

    .line 3981
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3983
    :cond_5
    iget-object v1, p0, Landroidx/core/app/h$g;->c:Landroid/app/PendingIntent;

    if-eqz v1, :cond_6

    const-string v2, "displayIntent"

    .line 3984
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3986
    :cond_6
    iget-object v1, p0, Landroidx/core/app/h$g;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 3987
    iget-object v1, p0, Landroidx/core/app/h$g;->d:Ljava/util/ArrayList;

    .line 3988
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/app/Notification;

    .line 3987
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Parcelable;

    const-string v2, "pages"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 3990
    :cond_7
    iget-object v1, p0, Landroidx/core/app/h$g;->e:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_8

    const-string v2, "background"

    .line 3991
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3993
    :cond_8
    iget v1, p0, Landroidx/core/app/h$g;->f:I

    if-eqz v1, :cond_9

    const-string v2, "contentIcon"

    .line 3994
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3996
    :cond_9
    iget v1, p0, Landroidx/core/app/h$g;->g:I

    const v2, 0x800005

    if-eq v1, v2, :cond_a

    const-string v2, "contentIconGravity"

    .line 3997
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3999
    :cond_a
    iget v1, p0, Landroidx/core/app/h$g;->h:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    const-string v2, "contentActionIndex"

    .line 4000
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4003
    :cond_b
    iget v1, p0, Landroidx/core/app/h$g;->i:I

    if-eqz v1, :cond_c

    const-string v2, "customSizePreset"

    .line 4004
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4006
    :cond_c
    iget v1, p0, Landroidx/core/app/h$g;->j:I

    if-eqz v1, :cond_d

    const-string v2, "customContentHeight"

    .line 4007
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4009
    :cond_d
    iget v1, p0, Landroidx/core/app/h$g;->k:I

    const/16 v2, 0x50

    if-eq v1, v2, :cond_e

    const-string v2, "gravity"

    .line 4010
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4012
    :cond_e
    iget v1, p0, Landroidx/core/app/h$g;->l:I

    if-eqz v1, :cond_f

    const-string v2, "hintScreenTimeout"

    .line 4013
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4015
    :cond_f
    iget-object v1, p0, Landroidx/core/app/h$g;->m:Ljava/lang/String;

    if-eqz v1, :cond_10

    const-string v2, "dismissalId"

    .line 4016
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4018
    :cond_10
    iget-object v1, p0, Landroidx/core/app/h$g;->n:Ljava/lang/String;

    if-eqz v1, :cond_11

    const-string v2, "bridgeTag"

    .line 4019
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4022
    :cond_11
    invoke-virtual {p1}, Landroidx/core/app/h$d;->a()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.wearable.EXTENSIONS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p1
.end method

.method public a()Landroidx/core/app/h$g;
    .locals 3

    .line 4055
    new-instance v0, Landroidx/core/app/h$g;

    invoke-direct {v0}, Landroidx/core/app/h$g;-><init>()V

    .line 4056
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/core/app/h$g;->a:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroidx/core/app/h$g;->a:Ljava/util/ArrayList;

    .line 4057
    iget v1, p0, Landroidx/core/app/h$g;->b:I

    iput v1, v0, Landroidx/core/app/h$g;->b:I

    .line 4058
    iget-object v1, p0, Landroidx/core/app/h$g;->c:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroidx/core/app/h$g;->c:Landroid/app/PendingIntent;

    .line 4059
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/core/app/h$g;->d:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroidx/core/app/h$g;->d:Ljava/util/ArrayList;

    .line 4060
    iget-object v1, p0, Landroidx/core/app/h$g;->e:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroidx/core/app/h$g;->e:Landroid/graphics/Bitmap;

    .line 4061
    iget v1, p0, Landroidx/core/app/h$g;->f:I

    iput v1, v0, Landroidx/core/app/h$g;->f:I

    .line 4062
    iget v1, p0, Landroidx/core/app/h$g;->g:I

    iput v1, v0, Landroidx/core/app/h$g;->g:I

    .line 4063
    iget v1, p0, Landroidx/core/app/h$g;->h:I

    iput v1, v0, Landroidx/core/app/h$g;->h:I

    .line 4064
    iget v1, p0, Landroidx/core/app/h$g;->i:I

    iput v1, v0, Landroidx/core/app/h$g;->i:I

    .line 4065
    iget v1, p0, Landroidx/core/app/h$g;->j:I

    iput v1, v0, Landroidx/core/app/h$g;->j:I

    .line 4066
    iget v1, p0, Landroidx/core/app/h$g;->k:I

    iput v1, v0, Landroidx/core/app/h$g;->k:I

    .line 4067
    iget v1, p0, Landroidx/core/app/h$g;->l:I

    iput v1, v0, Landroidx/core/app/h$g;->l:I

    .line 4068
    iget-object v1, p0, Landroidx/core/app/h$g;->m:Ljava/lang/String;

    iput-object v1, v0, Landroidx/core/app/h$g;->m:Ljava/lang/String;

    .line 4069
    iget-object v1, p0, Landroidx/core/app/h$g;->n:Ljava/lang/String;

    iput-object v1, v0, Landroidx/core/app/h$g;->n:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)Landroidx/core/app/h$g;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4268
    iput p1, p0, Landroidx/core/app/h$g;->f:I

    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)Landroidx/core/app/h$g;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4243
    iput-object p1, p0, Landroidx/core/app/h$g;->e:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public a(Z)Landroidx/core/app/h$g;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    .line 4474
    invoke-direct {p0, v0, p1}, Landroidx/core/app/h$g;->a(IZ)V

    return-object p0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 3762
    invoke-virtual {p0}, Landroidx/core/app/h$g;->a()Landroidx/core/app/h$g;

    move-result-object v0

    return-object v0
.end method
