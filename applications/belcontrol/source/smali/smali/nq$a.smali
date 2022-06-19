.class public final Lnq$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lak;

.field public final b:Z

.field public final c:Z


# direct methods
.method public constructor <init>(Lak;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnq$a;->a:Lak;

    iput-boolean p2, p0, Lnq$a;->b:Z

    iput-boolean p3, p0, Lnq$a;->c:Z

    return-void
.end method
