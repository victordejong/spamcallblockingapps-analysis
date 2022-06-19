.class public Le70$h;
.super Ld10;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le70;-><init>(Lz00;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Le70;Lz00;)V
    .locals 0

    invoke-direct {p0, p2}, Ld10;-><init>(Lz00;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)"

    return-object v0
.end method
