.class final Lcom/google/firebase/crashlytics/d/h/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/encoders/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/d/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/encoders/c<",
        "Lcom/google/firebase/crashlytics/d/h/v$b;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/firebase/crashlytics/d/h/a$a;

.field private static final b:Lcom/google/firebase/encoders/b;

.field private static final c:Lcom/google/firebase/encoders/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/crashlytics/d/h/a$a;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/d/h/a$a;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/a$a;->a:Lcom/google/firebase/crashlytics/d/h/a$a;

    const-string v0, "key"

    invoke-static {v0}, Lcom/google/firebase/encoders/b;->b(Ljava/lang/String;)Lcom/google/firebase/encoders/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/a$a;->b:Lcom/google/firebase/encoders/b;

    const-string v0, "value"

    invoke-static {v0}, Lcom/google/firebase/encoders/b;->b(Ljava/lang/String;)Lcom/google/firebase/encoders/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/a$a;->c:Lcom/google/firebase/encoders/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/firebase/crashlytics/d/h/v$b;

    check-cast p2, Lcom/google/firebase/encoders/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/d/h/a$a;->b(Lcom/google/firebase/crashlytics/d/h/v$b;Lcom/google/firebase/encoders/d;)V

    return-void
.end method

.method public b(Lcom/google/firebase/crashlytics/d/h/v$b;Lcom/google/firebase/encoders/d;)V
    .locals 2

    sget-object v0, Lcom/google/firebase/crashlytics/d/h/a$a;->b:Lcom/google/firebase/encoders/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/h/v$b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/d;->h(Lcom/google/firebase/encoders/b;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    sget-object v0, Lcom/google/firebase/crashlytics/d/h/a$a;->c:Lcom/google/firebase/encoders/b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/h/v$b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/google/firebase/encoders/d;->h(Lcom/google/firebase/encoders/b;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    return-void
.end method
