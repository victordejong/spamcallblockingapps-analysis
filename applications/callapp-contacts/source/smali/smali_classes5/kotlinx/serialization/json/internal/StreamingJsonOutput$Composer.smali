.class public final Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/json/internal/StreamingJsonOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Composer"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0005\n\u0002\u0010\u000c\n\u0002\u0010\u0006\n\u0002\u0010\u0007\n\u0002\u0010\t\n\u0002\u0010\n\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0010J\u0016\u0010\u0012\u001a\n \u0013*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0014\u001a\u00020\u000bJ\u0016\u0010\u0012\u001a\n \u0013*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0014\u001a\u00020\u0015J\u0016\u0010\u0012\u001a\n \u0013*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0014\u001a\u00020\u0016J\u0016\u0010\u0012\u001a\n \u0013*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0014\u001a\u00020\u0017J\u0016\u0010\u0012\u001a\n \u0013*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0014\u001a\u00020\u0018J\u0016\u0010\u0012\u001a\n \u0013*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0014\u001a\u00020\tJ\u0016\u0010\u0012\u001a\n \u0013*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0014\u001a\u00020\u0019J\u0016\u0010\u0012\u001a\n \u0013*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0014\u001a\u00020\u001aJ\u0016\u0010\u0012\u001a\n \u0013*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0014\u001a\u00020\u001bJ\u000e\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\u001bJ\u0006\u0010\u001e\u001a\u00020\u0010J\u0006\u0010\u001f\u001a\u00020\u0010R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u00060\u0003j\u0002`\u00048\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000b@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006 "
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;",
        "",
        "sb",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "(Ljava/lang/StringBuilder;Lkotlinx/serialization/json/Json;)V",
        "level",
        "",
        "<set-?>",
        "",
        "writingFirst",
        "getWritingFirst",
        "()Z",
        "indent",
        "",
        "nextItem",
        "print",
        "kotlin.jvm.PlatformType",
        "v",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "printQuoted",
        "value",
        "space",
        "unIndent",
        "kotlinx-serialization-runtime"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final json:Lkotlinx/serialization/json/Json;

.field private level:I

.field public final sb:Ljava/lang/StringBuilder;

.field private writingFirst:Z


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;Lkotlinx/serialization/json/Json;)V
    .locals 1

    const-string v0, "sb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->sb:Ljava/lang/StringBuilder;

    iput-object p2, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->json:Lkotlinx/serialization/json/Json;

    const/4 p1, 0x1

    .line 189
    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->writingFirst:Z

    return-void
.end method


# virtual methods
.method public final getWritingFirst()Z
    .locals 1

    .line 189
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->writingFirst:Z

    return v0
.end method

.method public final indent()V
    .locals 2

    const/4 v0, 0x1

    .line 193
    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->writingFirst:Z

    iget v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->level:I

    add-int/2addr v1, v0

    iput v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->level:I

    return-void
.end method

.method public final nextItem()V
    .locals 3

    const/4 v0, 0x0

    .line 201
    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->writingFirst:Z

    .line 202
    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->json:Lkotlinx/serialization/json/Json;

    iget-object v1, v1, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonConfiguration;->getPrettyPrint$kotlinx_serialization_runtime()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\n"

    .line 203
    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->print(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->level:I

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->json:Lkotlinx/serialization/json/Json;

    iget-object v2, v2, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v2}, Lkotlinx/serialization/json/JsonConfiguration;->getIndent$kotlinx_serialization_runtime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->print(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final print(B)Ljava/lang/StringBuilder;
    .locals 1

    .line 217
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->sb:Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public final print(C)Ljava/lang/StringBuilder;
    .locals 1

    .line 213
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public final print(D)Ljava/lang/StringBuilder;
    .locals 1

    .line 216
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public final print(F)Ljava/lang/StringBuilder;
    .locals 1

    .line 215
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public final print(I)Ljava/lang/StringBuilder;
    .locals 1

    .line 219
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public final print(J)Ljava/lang/StringBuilder;
    .locals 1

    .line 220
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public final print(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public final print(S)Ljava/lang/StringBuilder;
    .locals 1

    .line 218
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->sb:Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public final print(Z)Ljava/lang/StringBuilder;
    .locals 1

    .line 221
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public final printQuoted(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->sb:Ljava/lang/StringBuilder;

    invoke-static {v0, p1}, Lkotlinx/serialization/json/internal/StringOpsKt;->printQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public final space()V
    .locals 1

    .line 209
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->json:Lkotlinx/serialization/json/Json;

    iget-object v0, v0, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getPrettyPrint$kotlinx_serialization_runtime()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    .line 210
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->print(C)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final unIndent()V
    .locals 1

    .line 197
    iget v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->level:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->level:I

    return-void
.end method
