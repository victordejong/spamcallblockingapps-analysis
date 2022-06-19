.class synthetic Lcom/google/firebase/installations/c$2;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-installations@@16.2.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/installations/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 470
    invoke-static {}, Lcom/google/firebase/installations/b/e$b;->values()[Lcom/google/firebase/installations/b/e$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/firebase/installations/c$2;->b:[I

    :try_start_0
    sget-object v0, Lcom/google/firebase/installations/c$2;->b:[I

    sget-object v1, Lcom/google/firebase/installations/b/e$b;->a:Lcom/google/firebase/installations/b/e$b;

    invoke-virtual {v1}, Lcom/google/firebase/installations/b/e$b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lcom/google/firebase/installations/c$2;->b:[I

    sget-object v1, Lcom/google/firebase/installations/b/e$b;->b:Lcom/google/firebase/installations/b/e$b;

    invoke-virtual {v1}, Lcom/google/firebase/installations/b/e$b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lcom/google/firebase/installations/c$2;->b:[I

    sget-object v1, Lcom/google/firebase/installations/b/e$b;->c:Lcom/google/firebase/installations/b/e$b;

    invoke-virtual {v1}, Lcom/google/firebase/installations/b/e$b;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 440
    :goto_2
    invoke-static {}, Lcom/google/firebase/installations/b/d$b;->values()[Lcom/google/firebase/installations/b/d$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/firebase/installations/c$2;->a:[I

    :try_start_3
    sget-object v0, Lcom/google/firebase/installations/c$2;->a:[I

    sget-object v1, Lcom/google/firebase/installations/b/d$b;->a:Lcom/google/firebase/installations/b/d$b;

    invoke-virtual {v1}, Lcom/google/firebase/installations/b/d$b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lcom/google/firebase/installations/c$2;->a:[I

    sget-object v1, Lcom/google/firebase/installations/b/d$b;->b:Lcom/google/firebase/installations/b/d$b;

    invoke-virtual {v1}, Lcom/google/firebase/installations/b/d$b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    .line 470
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
