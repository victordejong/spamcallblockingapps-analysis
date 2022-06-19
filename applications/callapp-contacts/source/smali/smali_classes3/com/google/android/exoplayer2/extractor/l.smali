.class public interface abstract Lcom/google/android/exoplayer2/extractor/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/exoplayer2/extractor/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    sget-object v0, Lcom/google/android/exoplayer2/extractor/-$$Lambda$l$gZXgqFp7dtL1d4I4vh_4LHaJW3M;->INSTANCE:Lcom/google/android/exoplayer2/extractor/-$$Lambda$l$gZXgqFp7dtL1d4I4vh_4LHaJW3M;

    sput-object v0, Lcom/google/android/exoplayer2/extractor/l;->a:Lcom/google/android/exoplayer2/extractor/l;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/exoplayer2/extractor/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Lcom/google/android/exoplayer2/extractor/h;"
        }
    .end annotation
.end method

.method public abstract createExtractors()[Lcom/google/android/exoplayer2/extractor/h;
.end method
