.class public Lt41;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lv41;

.field public final b:Lu41;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lv41;

    invoke-direct {v0}, Lv41;-><init>()V

    iput-object v0, p0, Lt41;->a:Lv41;

    new-instance v1, Lu41;

    invoke-direct {v1, v0}, Lu41;-><init>(Ls41;)V

    iput-object v1, p0, Lt41;->b:Lu41;

    return-void
.end method


# virtual methods
.method public a()Ls41;
    .locals 1

    iget-object v0, p0, Lt41;->b:Lu41;

    return-object v0
.end method

.method public b()Ls41;
    .locals 1

    iget-object v0, p0, Lt41;->a:Lv41;

    return-object v0
.end method
