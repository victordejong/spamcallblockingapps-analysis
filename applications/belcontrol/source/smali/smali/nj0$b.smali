.class public Lnj0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnj0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2288d511ce8549edL


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Z


# direct methods
.method private readResolve()Ljava/lang/Object;
    .locals 7

    new-instance v6, Lnj0;

    iget-object v1, p0, Lnj0$b;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lnj0$b;->b:Z

    iget-boolean v3, p0, Lnj0$b;->c:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnj0;-><init>(Ljava/lang/String;ZZLjava/lang/String;Lnj0$a;)V

    return-object v6
.end method
