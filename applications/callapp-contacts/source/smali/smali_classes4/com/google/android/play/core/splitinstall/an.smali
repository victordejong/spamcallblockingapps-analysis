.class public final Lcom/google/android/play/core/splitinstall/an;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/internal/be;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/internal/be<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/play/core/splitinstall/am;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/splitinstall/am;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/an;->a:Lcom/google/android/play/core/splitinstall/am;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/an;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/an;->a:Lcom/google/android/play/core/splitinstall/am;

    .line 1000
    iget-object v0, v0, Lcom/google/android/play/core/splitinstall/am;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/play/core/internal/ah;->a(Ljava/lang/Object;)V

    return-object v0
.end method
