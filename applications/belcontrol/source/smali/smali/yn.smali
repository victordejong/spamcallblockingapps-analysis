.class public interface abstract Lyn;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lyn;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyn$a;

    invoke-direct {v0}, Lyn$a;-><init>()V

    sput-object v0, Lyn;->a:Lyn;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;ZZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Lwn;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPassthroughDecoderInfo()Lwn;
.end method
