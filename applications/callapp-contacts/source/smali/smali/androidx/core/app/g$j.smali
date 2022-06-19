.class public final Landroidx/core/app/g$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/app/g$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Landroid/app/PendingIntent;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field

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

    .line 4155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/g$j;->b:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 4136
    iput v0, p0, Landroidx/core/app/g$j;->c:I

    .line 4138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/g$j;->e:Ljava/util/ArrayList;

    const v0, 0x800005

    .line 4141
    iput v0, p0, Landroidx/core/app/g$j;->g:I

    const/4 v0, -0x1

    .line 4142
    iput v0, p0, Landroidx/core/app/g$j;->h:I

    const/4 v0, 0x0

    .line 4143
    iput v0, p0, Landroidx/core/app/g$j;->i:I

    const/16 v0, 0x50

    .line 4146
    iput v0, p0, Landroidx/core/app/g$j;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Notification;)V
    .locals 12

    .line 4159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/g$j;->b:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 4136
    iput v0, p0, Landroidx/core/app/g$j;->c:I

    .line 4138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/core/app/g$j;->e:Ljava/util/ArrayList;

    const v1, 0x800005

    .line 4141
    iput v1, p0, Landroidx/core/app/g$j;->g:I

    const/4 v2, -0x1

    .line 4142
    iput v2, p0, Landroidx/core/app/g$j;->h:I

    const/4 v3, 0x0

    .line 4143
    iput v3, p0, Landroidx/core/app/g$j;->i:I

    const/16 v4, 0x50

    .line 4146
    iput v4, p0, Landroidx/core/app/g$j;->k:I

    .line 4160
    invoke-static {p1}, Landroidx/core/app/g;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v5, "android.wearable.EXTENSIONS"

    .line 4161
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_6

    const-string v5, "actions"

    .line 4165
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 4166
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_4

    if-eqz v5, :cond_4

    .line 4167
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v8, v6, [Landroidx/core/app/g$a;

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v6, :cond_3

    .line 4169
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x14

    if-lt v10, v11, :cond_1

    .line 4171
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/Notification$Action;

    .line 4170
    invoke-static {v10}, Landroidx/core/app/g;->a(Landroid/app/Notification$Action;)Landroidx/core/app/g$a;

    move-result-object v10

    aput-object v10, v8, v9

    goto :goto_2

    .line 4172
    :cond_1
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v7, :cond_2

    .line 4174
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    .line 4173
    invoke-static {v10}, Landroidx/core/app/i;->a(Landroid/os/Bundle;)Landroidx/core/app/g$a;

    move-result-object v10

    aput-object v10, v8, v9

    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 4177
    :cond_3
    iget-object v5, p0, Landroidx/core/app/g$j;->b:Ljava/util/ArrayList;

    invoke-static {v5, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_4
    const-string v5, "flags"

    .line 4180
    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/core/app/g$j;->c:I

    const-string v0, "displayIntent"

    .line 4181
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroidx/core/app/g$j;->d:Landroid/app/PendingIntent;

    const-string v0, "pages"

    .line 4183
    invoke-static {p1, v0}, Landroidx/core/app/g;->a(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 4186
    iget-object v5, p0, Landroidx/core/app/g$j;->e:Ljava/util/ArrayList;

    invoke-static {v5, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_5
    const-string v0, "background"

    .line 4189
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroidx/core/app/g$j;->a:Landroid/graphics/Bitmap;

    const-string v0, "contentIcon"

    .line 4190
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/core/app/g$j;->f:I

    const-string v0, "contentIconGravity"

    .line 4191
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/core/app/g$j;->g:I

    const-string v0, "contentActionIndex"

    .line 4193
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/core/app/g$j;->h:I

    const-string v0, "customSizePreset"

    .line 4195
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/core/app/g$j;->i:I

    const-string v0, "customContentHeight"

    .line 4197
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/core/app/g$j;->j:I

    const-string v0, "gravity"

    .line 4198
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/core/app/g$j;->k:I

    const-string v0, "hintScreenTimeout"

    .line 4199
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/core/app/g$j;->l:I

    const-string v0, "dismissalId"

    .line 4200
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/g$j;->m:Ljava/lang/String;

    const-string v0, "bridgeTag"

    .line 4201
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/g$j;->n:Ljava/lang/String;

    :cond_6
    return-void
.end method

.method private static a(Landroidx/core/app/g$a;)Landroid/app/Notification$Action;
    .locals 5

    .line 4280
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 4281
    invoke-virtual {p0}, Landroidx/core/app/g$a;->a()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 4282
    new-instance v2, Landroid/app/Notification$Action$Builder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 5505
    :cond_0
    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->c()Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 6368
    :goto_0
    iget-object v3, p0, Landroidx/core/app/g$a;->i:Ljava/lang/CharSequence;

    .line 6372
    iget-object v4, p0, Landroidx/core/app/g$a;->j:Landroid/app/PendingIntent;

    .line 4284
    invoke-direct {v2, v0, v3, v4}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_2

    .line 4286
    :cond_1
    invoke-virtual {p0}, Landroidx/core/app/g$a;->a()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4288
    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->a()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 4289
    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->b()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 4291
    :goto_1
    new-instance v2, Landroid/app/Notification$Action$Builder;

    .line 7368
    iget-object v3, p0, Landroidx/core/app/g$a;->i:Ljava/lang/CharSequence;

    .line 7372
    iget-object v4, p0, Landroidx/core/app/g$a;->j:Landroid/app/PendingIntent;

    .line 4292
    invoke-direct {v2, v0, v3, v4}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 7379
    :goto_2
    iget-object v0, p0, Landroidx/core/app/g$a;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 4296
    new-instance v0, Landroid/os/Bundle;

    .line 8379
    iget-object v3, p0, Landroidx/core/app/g$a;->a:Landroid/os/Bundle;

    .line 4296
    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_3

    .line 4298
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8387
    :goto_3
    iget-boolean v3, p0, Landroidx/core/app/g$a;->d:Z

    const-string v4, "android.support.allowGeneratedReplies"

    .line 4300
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4302
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_4

    .line 9387
    iget-boolean v3, p0, Landroidx/core/app/g$a;->d:Z

    .line 4303
    invoke-virtual {v2, v3}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    .line 4305
    :cond_4
    invoke-virtual {v2, v0}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 9396
    iget-object p0, p0, Landroidx/core/app/g$a;->b:[Landroidx/core/app/l;

    if-eqz p0, :cond_5

    .line 4308
    invoke-static {p0}, Landroidx/core/app/l;->a([Landroidx/core/app/l;)[Landroid/app/RemoteInput;

    move-result-object p0

    .line 4309
    array-length v0, p0

    :goto_4
    if-ge v1, v0, :cond_5

    aget-object v3, p0, v1

    .line 4310
    invoke-virtual {v2, v3}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 4313
    :cond_5
    invoke-virtual {v2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroidx/core/app/g$e;)Landroidx/core/app/g$e;
    .locals 8

    .line 4213
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4215
    iget-object v1, p0, Landroidx/core/app/g$j;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 4216
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "actions"

    const/16 v3, 0x10

    if-lt v1, v3, :cond_3

    .line 4217
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/core/app/g$j;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 4218
    iget-object v4, p0, Landroidx/core/app/g$j;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/core/app/g$a;

    .line 4219
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x14

    if-lt v6, v7, :cond_1

    .line 4221
    invoke-static {v5}, Landroidx/core/app/g$j;->a(Landroidx/core/app/g$a;)Landroid/app/Notification$Action;

    move-result-object v5

    .line 4220
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4222
    :cond_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v3, :cond_0

    .line 4223
    invoke-static {v5}, Landroidx/core/app/i;->a(Landroidx/core/app/g$a;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4226
    :cond_2
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 4228
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4231
    :cond_4
    :goto_1
    iget v1, p0, Landroidx/core/app/g$j;->c:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const-string v2, "flags"

    .line 4232
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4234
    :cond_5
    iget-object v1, p0, Landroidx/core/app/g$j;->d:Landroid/app/PendingIntent;

    if-eqz v1, :cond_6

    const-string v2, "displayIntent"

    .line 4235
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4237
    :cond_6
    iget-object v1, p0, Landroidx/core/app/g$j;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 4238
    iget-object v1, p0, Landroidx/core/app/g$j;->e:Ljava/util/ArrayList;

    .line 4239
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/app/Notification;

    .line 4238
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Parcelable;

    const-string v2, "pages"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 4241
    :cond_7
    iget-object v1, p0, Landroidx/core/app/g$j;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_8

    const-string v2, "background"

    .line 4242
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4244
    :cond_8
    iget v1, p0, Landroidx/core/app/g$j;->f:I

    if-eqz v1, :cond_9

    const-string v2, "contentIcon"

    .line 4245
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4247
    :cond_9
    iget v1, p0, Landroidx/core/app/g$j;->g:I

    const v2, 0x800005

    if-eq v1, v2, :cond_a

    const-string v2, "contentIconGravity"

    .line 4248
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4250
    :cond_a
    iget v1, p0, Landroidx/core/app/g$j;->h:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    const-string v2, "contentActionIndex"

    .line 4251
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4254
    :cond_b
    iget v1, p0, Landroidx/core/app/g$j;->i:I

    if-eqz v1, :cond_c

    const-string v2, "customSizePreset"

    .line 4255
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4257
    :cond_c
    iget v1, p0, Landroidx/core/app/g$j;->j:I

    if-eqz v1, :cond_d

    const-string v2, "customContentHeight"

    .line 4258
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4260
    :cond_d
    iget v1, p0, Landroidx/core/app/g$j;->k:I

    const/16 v2, 0x50

    if-eq v1, v2, :cond_e

    const-string v2, "gravity"

    .line 4261
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4263
    :cond_e
    iget v1, p0, Landroidx/core/app/g$j;->l:I

    if-eqz v1, :cond_f

    const-string v2, "hintScreenTimeout"

    .line 4264
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4266
    :cond_f
    iget-object v1, p0, Landroidx/core/app/g$j;->m:Ljava/lang/String;

    if-eqz v1, :cond_10

    const-string v2, "dismissalId"

    .line 4267
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4269
    :cond_10
    iget-object v1, p0, Landroidx/core/app/g$j;->n:Ljava/lang/String;

    if-eqz v1, :cond_11

    const-string v2, "bridgeTag"

    .line 4270
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4273
    :cond_11
    invoke-virtual {p1}, Landroidx/core/app/g$e;->a()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.wearable.EXTENSIONS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p1
.end method

.method public final a()Landroidx/core/app/g$j;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0f0006

    .line 4531
    iput v0, p0, Landroidx/core/app/g$j;->f:I

    return-object p0
.end method

.method public final a(Ljava/util/List;)Landroidx/core/app/g$j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/app/g$a;",
            ">;)",
            "Landroidx/core/app/g$j;"
        }
    .end annotation

    .line 4366
    iget-object v0, p0, Landroidx/core/app/g$j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 10318
    new-instance v0, Landroidx/core/app/g$j;

    invoke-direct {v0}, Landroidx/core/app/g$j;-><init>()V

    .line 10319
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/core/app/g$j;->b:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroidx/core/app/g$j;->b:Ljava/util/ArrayList;

    .line 10320
    iget v1, p0, Landroidx/core/app/g$j;->c:I

    iput v1, v0, Landroidx/core/app/g$j;->c:I

    .line 10321
    iget-object v1, p0, Landroidx/core/app/g$j;->d:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroidx/core/app/g$j;->d:Landroid/app/PendingIntent;

    .line 10322
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/core/app/g$j;->e:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroidx/core/app/g$j;->e:Ljava/util/ArrayList;

    .line 10323
    iget-object v1, p0, Landroidx/core/app/g$j;->a:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroidx/core/app/g$j;->a:Landroid/graphics/Bitmap;

    .line 10324
    iget v1, p0, Landroidx/core/app/g$j;->f:I

    iput v1, v0, Landroidx/core/app/g$j;->f:I

    .line 10325
    iget v1, p0, Landroidx/core/app/g$j;->g:I

    iput v1, v0, Landroidx/core/app/g$j;->g:I

    .line 10326
    iget v1, p0, Landroidx/core/app/g$j;->h:I

    iput v1, v0, Landroidx/core/app/g$j;->h:I

    .line 10327
    iget v1, p0, Landroidx/core/app/g$j;->i:I

    iput v1, v0, Landroidx/core/app/g$j;->i:I

    .line 10328
    iget v1, p0, Landroidx/core/app/g$j;->j:I

    iput v1, v0, Landroidx/core/app/g$j;->j:I

    .line 10329
    iget v1, p0, Landroidx/core/app/g$j;->k:I

    iput v1, v0, Landroidx/core/app/g$j;->k:I

    .line 10330
    iget v1, p0, Landroidx/core/app/g$j;->l:I

    iput v1, v0, Landroidx/core/app/g$j;->l:I

    .line 10331
    iget-object v1, p0, Landroidx/core/app/g$j;->m:Ljava/lang/String;

    iput-object v1, v0, Landroidx/core/app/g$j;->m:Ljava/lang/String;

    .line 10332
    iget-object v1, p0, Landroidx/core/app/g$j;->n:Ljava/lang/String;

    iput-object v1, v0, Landroidx/core/app/g$j;->n:Ljava/lang/String;

    return-object v0
.end method
