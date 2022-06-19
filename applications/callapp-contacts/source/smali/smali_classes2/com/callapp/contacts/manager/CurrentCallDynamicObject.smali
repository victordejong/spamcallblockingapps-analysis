.class public Lcom/callapp/contacts/manager/CurrentCallDynamicObject;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Bitmap;

.field private f:Z

.field private g:Lcom/callapp/contacts/model/contact/ContactData;

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/bumptech/glide/e/c<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private i:J

.field private final j:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->h:Ljava/util/HashMap;

    .line 31
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->i:J

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->j:Ljava/lang/Object;

    return-void
.end method

.method private static a(Lcom/bumptech/glide/e/c;)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e/c<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 188
    :try_start_0
    invoke-interface {p0}, Lcom/bumptech/glide/e/c;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private a(IILcom/callapp/contacts/model/contact/ContactData;)Lcom/bumptech/glide/e/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            ")",
            "Lcom/bumptech/glide/e/c<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 170
    invoke-static {p1, p3}, Lcom/callapp/contacts/util/glide/GlideUtils;->a(ILcom/callapp/contacts/model/contact/ContactData;)Lcom/bumptech/glide/e/c;

    move-result-object p1

    .line 171
    iget-object p3, p0, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->h:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/e/c;

    .line 172
    invoke-static {p2}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->b(Lcom/bumptech/glide/e/c;)V

    return-object p1
.end method

.method private b(Ljava/lang/String;ILcom/callapp/contacts/model/contact/ContactData;)Lcom/bumptech/glide/e/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            ")",
            "Lcom/bumptech/glide/e/c<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 162
    invoke-static {p1, p3}, Lcom/callapp/contacts/util/glide/GlideUtils;->a(Ljava/lang/String;Lcom/callapp/contacts/model/contact/ContactData;)Lcom/bumptech/glide/e/c;

    move-result-object p1

    .line 163
    iget-object p3, p0, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->h:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/e/c;

    .line 164
    invoke-static {p2}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->b(Lcom/bumptech/glide/e/c;)V

    return-object p1
.end method

.method private static b(Lcom/bumptech/glide/e/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e/c<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 204
    invoke-interface {p0, v0}, Lcom/bumptech/glide/e/c;->cancel(Z)Z

    .line 205
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/glide/GlideUtils;->b(Landroid/content/Context;)Lcom/callapp/contacts/util/glide/GlideRequests;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/util/glide/GlideRequests;->a(Lcom/bumptech/glide/e/a/j;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(II)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->a(IILcom/callapp/contacts/model/contact/ContactData;)Lcom/bumptech/glide/e/c;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->a(Lcom/bumptech/glide/e/c;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;IILcom/callapp/contacts/model/contact/ContactData;)Landroid/graphics/Bitmap;
    .locals 1

    .line 147
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0, p1, p3, p4}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->b(Ljava/lang/String;ILcom/callapp/contacts/model/contact/ContactData;)Lcom/bumptech/glide/e/c;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->a(Lcom/bumptech/glide/e/c;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 1177
    :cond_0
    invoke-static {p2}, Lcom/callapp/contacts/util/glide/GlideUtils;->getFutureTargetForResourceTarget(I)Lcom/bumptech/glide/e/c;

    move-result-object p1

    .line 1178
    iget-object p2, p0, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->h:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/e/c;

    .line 1179
    invoke-static {p2}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->b(Lcom/bumptech/glide/e/c;)V

    .line 150
    invoke-static {p1}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->a(Lcom/bumptech/glide/e/c;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;ILcom/callapp/contacts/model/contact/ContactData;)Landroid/graphics/Bitmap;
    .locals 1

    .line 140
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->b(Ljava/lang/String;ILcom/callapp/contacts/model/contact/ContactData;)Lcom/bumptech/glide/e/c;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->a(Lcom/bumptech/glide/e/c;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const p1, 0x7f08058f

    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->a(IILcom/callapp/contacts/model/contact/ContactData;)Lcom/bumptech/glide/e/c;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->a(Lcom/bumptech/glide/e/c;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final a(I)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/e/c;

    if-eqz p1, :cond_0

    .line 198
    invoke-static {p1}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->b(Lcom/bumptech/glide/e/c;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;J)V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_0
    iget-wide v1, p0, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->i:J

    cmp-long v3, p2, v1

    if-nez v3, :cond_0

    .line 94
    iput-object p1, p0, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->d:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 97
    iput-object p1, p0, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->d:Landroid/graphics/Bitmap;

    .line 100
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_0
    iget-wide v1, p0, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->i:J

    cmp-long v3, p2, v1

    if-lez v3, :cond_0

    .line 85
    iput-wide p2, p0, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->i:J

    .line 86
    iput-object p1, p0, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->c:Ljava/lang/String;

    .line 88
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->a:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->b:Ljava/lang/String;

    .line 37
    iget-object p1, p0, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->c:Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 38
    iput-object p2, p0, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->d:Landroid/graphics/Bitmap;

    .line 40
    :cond_0
    iput-object p3, p0, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->c:Ljava/lang/String;

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->f:Z

    .line 42
    iput-object p4, p0, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->g:Lcom/callapp/contacts/model/contact/ContactData;

    .line 43
    iput-object p2, p0, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->e:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final a(ZZJZ)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const p1, 0x7f080377

    .line 113
    invoke-static {p1}, Lcom/callapp/contacts/util/ImageUtils;->getResourceUri(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p3, p4}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->a(Ljava/lang/String;J)V

    .line 114
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->a(II)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->a(Landroid/graphics/Bitmap;J)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const p1, 0x7f08037c

    .line 116
    invoke-static {p1}, Lcom/callapp/contacts/util/ImageUtils;->getResourceUri(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p3, p4}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->a(Ljava/lang/String;J)V

    .line 117
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->a(II)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->a(Landroid/graphics/Bitmap;J)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 121
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isIncognito()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/callapp/contacts/manager/IncognitoCallManager;->get()Lcom/callapp/contacts/manager/IncognitoCallManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/IncognitoCallManager;->isIncognito(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 122
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 124
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f080596

    goto :goto_0

    :cond_3
    const p1, 0x7f080595

    :goto_0
    invoke-static {p1}, Lcom/callapp/contacts/util/ImageUtils;->getResourceUri(I)Ljava/lang/String;

    move-result-object p1

    .line 127
    :cond_4
    :goto_1
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    if-eqz p5, :cond_6

    .line 129
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f080591

    goto :goto_2

    :cond_5
    const p1, 0x7f080590

    :goto_2
    invoke-static {p1}, Lcom/callapp/contacts/util/ImageUtils;->getResourceUri(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 131
    :cond_6
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result p1

    if-eqz p1, :cond_7

    const p1, 0x7f080593

    goto :goto_3

    :cond_7
    const p1, 0x7f080592

    :goto_3
    invoke-static {p1}, Lcom/callapp/contacts/util/ImageUtils;->getResourceUri(I)Ljava/lang/String;

    move-result-object p1

    .line 134
    :cond_8
    :goto_4
    invoke-virtual {p0, p1, p3, p4}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->a(Ljava/lang/String;J)V

    .line 135
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getPhotoUrl()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->g:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p0, p1, v0, p2}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->a(Ljava/lang/String;ILcom/callapp/contacts/model/contact/ContactData;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->a(Landroid/graphics/Bitmap;J)V

    return-void
.end method

.method public getContact()Lcom/callapp/contacts/model/contact/ContactData;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->g:Lcom/callapp/contacts/model/contact/ContactData;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->c:Ljava/lang/String;

    return-object v0
.end method

.method public isBlocked()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->f:Z

    return v0
.end method

.method public setBlocked(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->f:Z

    return-void
.end method

.method public setContact(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->g:Lcom/callapp/contacts/model/contact/ContactData;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->b:Ljava/lang/String;

    return-void
.end method
