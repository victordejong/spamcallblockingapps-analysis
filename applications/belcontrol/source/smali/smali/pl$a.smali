.class public final Lpl$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lsl;

.field public final b:Lvl;

.field public final c:Lkk;

.field public d:I


# direct methods
.method public constructor <init>(Lsl;Lvl;Lkk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpl$a;->a:Lsl;

    iput-object p2, p0, Lpl$a;->b:Lvl;

    iput-object p3, p0, Lpl$a;->c:Lkk;

    return-void
.end method
