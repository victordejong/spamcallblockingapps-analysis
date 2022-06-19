.class public interface abstract Lab0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TypeFrom::",
        "Ljava/io/Serializable;",
        "TypeTo::",
        "Ljava/io/Serializable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Lab0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lpa0;->b:Lpa0;

    sput-object v0, Lab0;->a:Lab0;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/io/Serializable;)Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTypeFrom;)TTypeTo;"
        }
    .end annotation
.end method
