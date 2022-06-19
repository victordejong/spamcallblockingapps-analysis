.class public Lnj0$c;
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
    name = "c"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4b1ad70b9L


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Z

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnj0$c;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lnj0$c;->b:Z

    iput-boolean p3, p0, Lnj0$c;->c:Z

    iput-object p4, p0, Lnj0$c;->d:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZZLjava/lang/String;Lnj0$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lnj0$c;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 7

    new-instance v6, Lnj0;

    iget-object v1, p0, Lnj0$c;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lnj0$c;->b:Z

    iget-boolean v3, p0, Lnj0$c;->c:Z

    iget-object v4, p0, Lnj0$c;->d:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnj0;-><init>(Ljava/lang/String;ZZLjava/lang/String;Lnj0$a;)V

    return-object v6
.end method
