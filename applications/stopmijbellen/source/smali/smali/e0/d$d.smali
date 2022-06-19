.class public final Le0/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le0/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Lj0/e;

.field public final b:I

.field public final c:I

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lj0/e;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le0/d$d;->a:Lj0/e;

    .line 3
    iput p2, p0, Le0/d$d;->c:I

    .line 4
    iput p3, p0, Le0/d$d;->b:I

    .line 5
    iput-object p4, p0, Le0/d$d;->d:Ljava/lang/String;

    return-void
.end method
