.class public final Ld9/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld9/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ld9/c;

.field public final b:Lcom/raizlabs/android/dbflow/config/c;

.field public c:Ld9/h$b;

.field public d:Ld9/h$c;


# direct methods
.method public constructor <init>(Ld9/c;Lcom/raizlabs/android/dbflow/config/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld9/h$a;->a:Ld9/c;

    .line 3
    iput-object p2, p0, Ld9/h$a;->b:Lcom/raizlabs/android/dbflow/config/c;

    return-void
.end method
