.class public Lqh$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfh;Ljt;)Lqh;
    .locals 1

    new-instance v0, Lqh;

    invoke-direct {v0, p1, p2}, Lqh;-><init>(Lfh;Ljt;)V

    return-object v0
.end method
