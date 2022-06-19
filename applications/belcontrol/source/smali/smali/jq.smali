.class public final Ljq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmq;


# instance fields
.field public final a:Lls$a;


# direct methods
.method public constructor <init>(Lls$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljq;->a:Lls$a;

    return-void
.end method


# virtual methods
.method public createDataSource(I)Lls;
    .locals 0

    iget-object p1, p0, Ljq;->a:Lls$a;

    invoke-interface {p1}, Lls$a;->createDataSource()Lls;

    move-result-object p1

    return-object p1
.end method
