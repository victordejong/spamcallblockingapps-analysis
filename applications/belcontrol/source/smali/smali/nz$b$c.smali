.class public final Lnz$b$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Ldz$i;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ldz$i;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnz$b$c;->a:Ldz$i;

    iput-object p2, p0, Lnz$b$c;->b:Ljava/lang/Object;

    return-void
.end method
