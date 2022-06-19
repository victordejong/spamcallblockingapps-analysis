.class public final Lhl1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lbl1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lbl1<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final a:Lbl1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbl1<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Ljk1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljk1<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbl1;Ljk1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbl1<",
            "+TT;>;",
            "Ljk1<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lqk1;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformer"

    invoke-static {p2, v0}, Lqk1;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhl1;->a:Lbl1;

    iput-object p2, p0, Lhl1;->b:Ljk1;

    return-void
.end method

.method public static final synthetic a(Lhl1;)Lbl1;
    .locals 0

    iget-object p0, p0, Lhl1;->a:Lbl1;

    return-object p0
.end method

.method public static final synthetic b(Lhl1;)Ljk1;
    .locals 0

    iget-object p0, p0, Lhl1;->b:Ljk1;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Lhl1$a;

    invoke-direct {v0, p0}, Lhl1$a;-><init>(Lhl1;)V

    return-object v0
.end method
