.class public Luh0$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Luh0$c;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Luh0$c;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Luh0$b;->a:Ljava/lang/String;

    iput-object v0, p0, Luh0$b;->c:Ljava/lang/String;

    iput-object p1, p0, Luh0$b;->a:Ljava/lang/String;

    iput-object p2, p0, Luh0$b;->b:Luh0$c;

    iput-object p3, p0, Luh0$b;->c:Ljava/lang/String;

    return-void
.end method
