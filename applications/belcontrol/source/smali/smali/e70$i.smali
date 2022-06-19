.class public Le70$i;
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

    const-string v0, "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))"

    return-object v0
.end method
