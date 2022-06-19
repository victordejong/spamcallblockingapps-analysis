.class public final Lug$e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final a:Lph;

.field public final b:I

.field public final c:J


# direct methods
.method public constructor <init>(Lph;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lug$e;->a:Lph;

    iput p2, p0, Lug$e;->b:I

    iput-wide p3, p0, Lug$e;->c:J

    return-void
.end method
