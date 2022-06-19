.class public Lfa$e;
.super Lfa$d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final b:Z


# direct methods
.method public constructor <init>(Lfa$c;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lfa$d;-><init>(Lfa$c;)V

    iput-boolean p2, p0, Lfa$e;->b:Z

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lfa$e;->b:Z

    return v0
.end method
