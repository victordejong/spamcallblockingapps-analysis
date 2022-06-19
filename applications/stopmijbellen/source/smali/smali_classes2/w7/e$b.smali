.class public Lw7/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw7/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Le8/b;

.field public final synthetic b:Lw7/e;


# direct methods
.method public constructor <init>(Lw7/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lw7/e$b;->b:Lw7/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lw7/e$b$a;

    invoke-direct {p1, p0}, Lw7/e$b$a;-><init>(Lw7/e$b;)V

    iput-object p1, p0, Lw7/e$b;->a:Le8/b;

    return-void
.end method
