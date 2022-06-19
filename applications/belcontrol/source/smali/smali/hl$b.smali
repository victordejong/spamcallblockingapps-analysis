.class public final Lhl$b;
.super Lhl;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:Lyt;


# direct methods
.method public constructor <init>(ILyt;)V
    .locals 0

    invoke-direct {p0, p1}, Lhl;-><init>(I)V

    iput-object p2, p0, Lhl$b;->b:Lyt;

    return-void
.end method
