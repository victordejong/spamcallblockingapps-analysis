.class public final Lcom/google/android/gms/internal/measurement/zzib;
.super Ljava/lang/RuntimeException;
.source "com.google.android.gms:play-services-measurement-base@@17.4.2"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/fn;)V
    .locals 1

    .prologue
    .line 1
    const-string/jumbo v0, "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzib;->a:Ljava/util/List;

    .line 3
    return-void
.end method
