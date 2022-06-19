.class public Lzh0$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Lzh0$p;

.field public b:Lzh0$p;

.field public c:Lzh0$p;

.field public d:Lzh0$p;


# direct methods
.method public constructor <init>(Lzh0$p;Lzh0$p;Lzh0$p;Lzh0$p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzh0$c;->a:Lzh0$p;

    iput-object p2, p0, Lzh0$c;->b:Lzh0$p;

    iput-object p3, p0, Lzh0$c;->c:Lzh0$p;

    iput-object p4, p0, Lzh0$c;->d:Lzh0$p;

    return-void
.end method
