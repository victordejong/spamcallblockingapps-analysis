.class public final Lcom/google/android/gms/common/api/internal/av;
.super Lcom/google/android/gms/common/api/internal/aj;
.source "com.google.android.gms:play-services-base@@17.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/google/android/gms/common/api/internal/d$a",
        "<+",
        "Lcom/google/android/gms/common/api/h;",
        "Lcom/google/android/gms/common/api/a$b;",
        ">;>",
        "Lcom/google/android/gms/common/api/internal/aj;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/common/api/internal/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/google/android/gms/common/api/internal/d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITA;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/aj;-><init>(I)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/av;->a:Lcom/google/android/gms/common/api/internal/d$a;

    .line 3
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/av;->a:Lcom/google/android/gms/common/api/internal/d$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/d$a;->b(Lcom/google/android/gms/common/api/Status;)V

    .line 10
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/internal/bg;Z)V
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/av;->a:Lcom/google/android/gms/common/api/internal/d$a;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/common/api/internal/bg;->a(Lcom/google/android/gms/common/api/internal/BasePendingResult;Z)V

    .line 16
    return-void
.end method

.method public final a(Ljava/lang/RuntimeException;)V
    .locals 6

    .prologue
    .line 11
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xa

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/av;->a:Lcom/google/android/gms/common/api/internal/d$a;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/d$a;->b(Lcom/google/android/gms/common/api/Status;)V

    .line 14
    return-void
.end method

.method public final c(Lcom/google/android/gms/common/api/internal/f$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/f$a",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/av;->a:Lcom/google/android/gms/common/api/internal/d$a;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/f$a;->b()Lcom/google/android/gms/common/api/a$f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/d$a;->b(Lcom/google/android/gms/common/api/a$b;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :goto_0
    return-void

    .line 6
    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/aj;->a(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method
