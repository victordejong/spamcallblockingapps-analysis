.class public Lcom/google/android/gms/common/internal/w;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.1"


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/w;->a:Landroid/content/res/Resources;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/internal/w;->a:Landroid/content/res/Resources;

    sget v1, Lcom/google/android/gms/common/j$a;->common_google_play_services_unknown_issue:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/w;->b:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/common/internal/w;->a:Landroid/content/res/Resources;

    const-string/jumbo v1, "string"

    iget-object v2, p0, Lcom/google/android/gms/common/internal/w;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 8
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/w;->a:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
