.class public final Lln;
.super Luj;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lln$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lju;JJI)V
    .locals 16

    new-instance v1, Luj$b;

    invoke-direct {v1}, Luj$b;-><init>()V

    new-instance v2, Lln$a;

    move-object/from16 v0, p1

    move/from16 v3, p6

    invoke-direct {v2, v3, v0}, Lln$a;-><init>(ILju;)V

    const-wide/16 v3, 0x1

    add-long v7, p2, v3

    const-wide/16 v5, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v13, 0xbc

    const/16 v15, 0x3ac

    move-object/from16 v0, p0

    move-wide/from16 v3, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v0 .. v15}, Luj;-><init>(Luj$e;Luj$g;JJJJJJI)V

    return-void
.end method
