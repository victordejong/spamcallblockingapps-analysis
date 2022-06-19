.class public Lcom/google/android/gms/common/api/internal/h;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.1"


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string/jumbo v0, "Activity must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/h;->a:Ljava/lang/Object;

    .line 4
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/h;->a:Ljava/lang/Object;

    instance-of v0, v0, Landroidx/fragment/app/d;

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/h;->a:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    return v0
.end method

.method public c()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/h;->a:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public d()Landroidx/fragment/app/d;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/h;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/d;

    return-object v0
.end method
