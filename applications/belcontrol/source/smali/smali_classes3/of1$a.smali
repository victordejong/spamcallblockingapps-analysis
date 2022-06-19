.class public Lof1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmf1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lof1;-><init>(Lmf1;Lof1$b;Lof1$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:J

.field public final synthetic b:Lof1;


# direct methods
.method public constructor <init>(Lof1;)V
    .locals 2

    iput-object p1, p0, Lof1$a;->b:Lof1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lof1$a;->a:J

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lof1$a;->b:Lof1;

    invoke-static {v0}, Lof1;->c(Lof1;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lof1$a;->a:J

    return-wide v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lof1$a;->b:Lof1;

    invoke-static {v0}, Lof1;->b(Lof1;)V

    return-void
.end method
