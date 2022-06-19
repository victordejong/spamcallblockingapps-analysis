.class final Lcom/google/android/gms/measurement/internal/jq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/ei;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/jo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/jo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/jq;->b:Lcom/google/android/gms/measurement/internal/jo;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/jq;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jq;->b:Lcom/google/android/gms/measurement/internal/jo;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jq;->a:Ljava/lang/String;

    invoke-virtual {v0, p2, p3, p4, v1}, Lcom/google/android/gms/measurement/internal/jo;->a(ILjava/lang/Throwable;[BLjava/lang/String;)V

    .line 3
    return-void
.end method
