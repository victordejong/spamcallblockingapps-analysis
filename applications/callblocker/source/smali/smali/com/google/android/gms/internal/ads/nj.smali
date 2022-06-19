.class public final Lcom/google/android/gms/internal/ads/nj;
.super Lcom/google/android/gms/internal/ads/nt;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/act;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/act;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    const-string/jumbo v0, "storePicture"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/nt;-><init>(Lcom/google/android/gms/internal/ads/act;Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/nj;->a:Ljava/util/Map;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/act;->f()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/nj;->b:Landroid/content/Context;

    .line 4
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/nj;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nj;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nj;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 6
    const-string/jumbo v0, "Activity context is not available"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/nt;->a(Ljava/lang/String;)V

    .line 40
    :goto_0
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nj;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ve;->e(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/ecp;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ecp;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    const-string/jumbo v0, "Feature is not supported by the device."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/nt;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nj;->a:Ljava/util/Map;

    const-string/jumbo v1, "iurl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    const-string/jumbo v0, "Image url cannot be empty."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/nt;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_2
    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 17
    const-string/jumbo v1, "Invalid image url: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/nt;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 20
    :cond_4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ve;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 24
    const-string/jumbo v1, "Image type not recognized: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/nt;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 26
    :cond_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ug;->d()Landroid/content/res/Resources;

    move-result-object v3

    .line 27
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nj;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ve;->d(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 28
    if-eqz v3, :cond_7

    sget v1, Lcom/google/android/gms/ads/d/a$a;->s1:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 30
    if-eqz v3, :cond_8

    sget v1, Lcom/google/android/gms/ads/d/a$a;->s2:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 31
    :goto_4
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 33
    if-eqz v3, :cond_9

    sget v1, Lcom/google/android/gms/ads/d/a$a;->s3:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_5
    new-instance v5, Lcom/google/android/gms/internal/ads/nm;

    invoke-direct {v5, p0, v0, v2}, Lcom/google/android/gms/internal/ads/nm;-><init>(Lcom/google/android/gms/internal/ads/nj;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v4, v1, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 36
    if-eqz v3, :cond_a

    sget v0, Lcom/google/android/gms/ads/d/a$a;->s4:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_6
    new-instance v1, Lcom/google/android/gms/internal/ads/nl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/nl;-><init>(Lcom/google/android/gms/internal/ads/nj;)V

    .line 37
    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 38
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 28
    :cond_7
    const-string/jumbo v1, "Save image"

    goto :goto_3

    .line 30
    :cond_8
    const-string/jumbo v1, "Allow Ad to store image in Picture gallery?"

    goto :goto_4

    .line 33
    :cond_9
    const-string/jumbo v1, "Accept"

    goto :goto_5

    .line 36
    :cond_a
    const-string/jumbo v0, "Decline"

    goto :goto_6
.end method
