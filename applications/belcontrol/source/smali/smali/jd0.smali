.class public Ljd0;
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


# instance fields
.field public a:Lab0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lab0<",
            "TTypeFrom;TTypeTo;>;"
        }
    .end annotation
.end field

.field public b:Lkd0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkd0<",
            "TTypeTo;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lab0;Lkd0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lab0<",
            "TTypeFrom;TTypeTo;>;",
            "Lkd0<",
            "TTypeTo;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljd0;->a:Lab0;

    iput-object p2, p0, Ljd0;->b:Lkd0;

    return-void
.end method
