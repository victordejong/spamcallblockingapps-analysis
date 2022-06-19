.class final Lcom/criteo/publisher/h/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/h/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/lang/StringBuilder;

.field private final b:Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;)V
    .locals 0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p1, p0, Lcom/criteo/publisher/h/b$b;->b:Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/h/b$b;->a:Ljava/lang/StringBuilder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;Lcom/criteo/publisher/h/b$a;)V
    .locals 0

    .line 230
    invoke-direct {p0, p1}, Lcom/criteo/publisher/h/b$b;-><init>(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/criteo/publisher/h/b$b;->b:Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;->addCustomTargeting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    iget-object v0, p0, Lcom/criteo/publisher/h/b$b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/criteo/publisher/h/b$b;->a:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/h/b$b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catch_0
    move-exception p1

    .line 254
    invoke-static {p1}, Lcom/criteo/publisher/m0/o;->a(Ljava/lang/Throwable;)V

    return-void
.end method
