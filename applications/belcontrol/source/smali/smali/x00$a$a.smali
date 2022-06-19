.class public Lx00$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx00$a;->e([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[Ljava/lang/String;

.field public final synthetic b:Lx00$a;


# direct methods
.method public constructor <init>(Lx00$a;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lx00$a$a;->b:Lx00$a;

    iput-object p2, p0, Lx00$a$a;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lx00$a$a;->b:Lx00$a;

    iget-object v0, v0, Lx00$a;->a:Lx00;

    iget-object v0, v0, Lx00;->d:Lw00;

    iget-object v1, p0, Lx00$a$a;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lw00;->e([Ljava/lang/String;)V

    return-void
.end method
