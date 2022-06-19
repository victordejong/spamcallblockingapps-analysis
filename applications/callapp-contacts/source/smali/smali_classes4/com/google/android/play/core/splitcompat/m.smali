.class final Lcom/google/android/play/core/splitcompat/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/splitinstall/ac;


# instance fields
.field final synthetic a:Lcom/google/android/play/core/splitcompat/a;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitcompat/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/splitcompat/m;->a:Lcom/google/android/play/core/splitcompat/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/splitcompat/m;->a:Lcom/google/android/play/core/splitcompat/a;

    invoke-static {v0}, Lcom/google/android/play/core/splitcompat/a;->a(Lcom/google/android/play/core/splitcompat/a;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
