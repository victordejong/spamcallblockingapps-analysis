.class public final Lug$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lhp;

.field public final b:Lph;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lhp;Lph;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lug$b;->a:Lhp;

    iput-object p2, p0, Lug$b;->b:Lph;

    iput-object p3, p0, Lug$b;->c:Ljava/lang/Object;

    return-void
.end method
