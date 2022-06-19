.class public Lma1;
.super Ljava/lang/Exception;
.source ""


# static fields
.field private static final serialVersionUID:J = 0x7da6d9c4725e50b3L


# instance fields
.field public a:Loa1;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    new-instance v0, Loa1;

    invoke-direct {v0, p1, p2}, Loa1;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lma1;-><init>(Loa1;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    new-instance v0, Loa1;

    invoke-direct {v0, p1, p2}, Loa1;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lma1;-><init>(Loa1;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Loa1;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lma1;-><init>(Loa1;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Loa1;Ljava/lang/Exception;)V
    .locals 1

    invoke-virtual {p1}, Loa1;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lma1;->a:Loa1;

    return-void
.end method


# virtual methods
.method public a()Loa1;
    .locals 1

    iget-object v0, p0, Lma1;->a:Loa1;

    return-object v0
.end method
