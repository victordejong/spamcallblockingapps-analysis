.class Ld/h/m/b0$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/h/m/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Ld/h/m/b0;


# direct methods
.method constructor <init>()V
    .locals 2

    new-instance v0, Ld/h/m/b0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld/h/m/b0;-><init>(Ld/h/m/b0;)V

    invoke-direct {p0, v0}, Ld/h/m/b0$d;-><init>(Ld/h/m/b0;)V

    return-void
.end method

.method constructor <init>(Ld/h/m/b0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/h/m/b0$d;->a:Ld/h/m/b0;

    return-void
.end method


# virtual methods
.method a()Ld/h/m/b0;
    .locals 1

    iget-object v0, p0, Ld/h/m/b0$d;->a:Ld/h/m/b0;

    return-object v0
.end method

.method b(Ld/h/e/b;)V
    .locals 0

    return-void
.end method

.method c(Ld/h/e/b;)V
    .locals 0

    return-void
.end method
