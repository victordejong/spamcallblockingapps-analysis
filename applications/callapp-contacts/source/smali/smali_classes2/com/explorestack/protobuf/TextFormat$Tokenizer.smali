.class final Lcom/explorestack/protobuf/TextFormat$Tokenizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/TextFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Tokenizer"
.end annotation


# static fields
.field private static final DOUBLE_INFINITY:Ljava/util/regex/Pattern;

.field private static final FLOAT_INFINITY:Ljava/util/regex/Pattern;

.field private static final FLOAT_NAN:Ljava/util/regex/Pattern;

.field private static final TOKEN:Ljava/util/regex/Pattern;

.field private static final WHITESPACE:Ljava/util/regex/Pattern;


# instance fields
.field private column:I

.field private currentToken:Ljava/lang/String;

.field private line:I

.field private final matcher:Ljava/util/regex/Matcher;

.field private pos:I

.field private previousColumn:I

.field private previousLine:I

.field private final text:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "(\\s|(#.*$))++"

    const/16 v1, 0x8

    .line 760
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->WHITESPACE:Ljava/util/regex/Pattern;

    const-string v0, "[a-zA-Z_][0-9a-zA-Z_+-]*+|[.]?[0-9+-][0-9a-zA-Z_.+-]*+|\"([^\"\n\\\\]|\\\\.)*+(\"|\\\\?$)|\'([^\'\n\\\\]|\\\\.)*+(\'|\\\\?$)"

    .line 762
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->TOKEN:Ljava/util/regex/Pattern;

    const-string v0, "-?inf(inity)?"

    const/4 v1, 0x2

    .line 770
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->DOUBLE_INFINITY:Ljava/util/regex/Pattern;

    const-string v0, "-?inf(inity)?f?"

    .line 772
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->FLOAT_INFINITY:Ljava/util/regex/Pattern;

    const-string v0, "nanf?"

    .line 773
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->FLOAT_NAN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 747
    iput v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->pos:I

    .line 750
    iput v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->line:I

    .line 751
    iput v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->column:I

    .line 755
    iput v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->previousLine:I

    .line 756
    iput v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->previousColumn:I

    .line 777
    iput-object p1, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->text:Ljava/lang/CharSequence;

    .line 778
    sget-object v0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->WHITESPACE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    .line 779
    invoke-direct {p0}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->skipWhitespace()V

    .line 780
    invoke-virtual {p0}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->nextToken()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;Lcom/explorestack/protobuf/TextFormat$1;)V
    .locals 0

    .line 741
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$800(Lcom/explorestack/protobuf/TextFormat$Tokenizer;)Ljava/lang/String;
    .locals 0

    .line 741
    iget-object p0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    return-object p0
.end method

.method private consumeByteString(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .line 1138
    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :cond_0
    const/16 v0, 0x22

    if-eq v1, v0, :cond_2

    const/16 v0, 0x27

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "Expected string."

    .line 1140
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/explorestack/protobuf/TextFormat$ParseException;

    move-result-object p1

    throw p1

    .line 1143
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_3

    .line 1148
    :try_start_0
    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1149
    invoke-static {v0}, Lcom/explorestack/protobuf/TextFormat;->unescapeBytes(Ljava/lang/CharSequence;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1150
    invoke-virtual {p0}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->nextToken()V

    .line 1151
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/explorestack/protobuf/TextFormat$InvalidEscapeSequenceException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1153
    invoke-virtual {p1}, Lcom/explorestack/protobuf/TextFormat$InvalidEscapeSequenceException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/explorestack/protobuf/TextFormat$ParseException;

    move-result-object p1

    throw p1

    :cond_3
    const-string p1, "String missing ending quote."

    .line 1144
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/explorestack/protobuf/TextFormat$ParseException;

    move-result-object p1

    throw p1
.end method

.method private floatParseException(Ljava/lang/NumberFormatException;)Lcom/explorestack/protobuf/TextFormat$ParseException;
    .locals 2

    .line 1188
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t parse number: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/explorestack/protobuf/TextFormat$ParseException;

    move-result-object p1

    return-object p1
.end method

.method private integerParseException(Ljava/lang/NumberFormatException;)Lcom/explorestack/protobuf/TextFormat$ParseException;
    .locals 2

    .line 1180
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t parse integer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/explorestack/protobuf/TextFormat$ParseException;

    move-result-object p1

    return-object p1
.end method

.method private skipWhitespace()V
    .locals 3

    .line 841
    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    sget-object v1, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->WHITESPACE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 842
    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iget-object v2, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :cond_0
    return-void
.end method


# virtual methods
.method public final atEnd()Z
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final consume(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .line 865
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 866
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/explorestack/protobuf/TextFormat$ParseException;

    move-result-object p1

    throw p1
.end method

.method public final consumeBoolean()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .line 1084
    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v1, "True"

    .line 1085
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v1, "t"

    .line 1086
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v1, "1"

    .line 1087
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1090
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v1, "False"

    .line 1091
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v1, "f"

    .line 1092
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v1, "0"

    .line 1093
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1097
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected \"true\" or \"false\". Found \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/explorestack/protobuf/TextFormat$ParseException;

    move-result-object v0

    throw v0

    .line 1094
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->nextToken()V

    const/4 v0, 0x0

    return v0

    .line 1088
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->nextToken()V

    const/4 v0, 0x1

    return v0
.end method

.method public final consumeByteString()Lcom/explorestack/protobuf/ByteString;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .line 1124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1125
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->consumeByteString(Ljava/util/List;)V

    .line 1126
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1129
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFrom(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    return-object v0

    .line 1127
    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->consumeByteString(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final consumeDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .line 1010
    sget-object v0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->DOUBLE_INFINITY:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1011
    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1012
    invoke-virtual {p0}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->nextToken()V

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0

    .line 1015
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v1, "nan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1016
    invoke-virtual {p0}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->nextToken()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 1020
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 1021
    invoke-virtual {p0}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->nextToken()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 1024
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->floatParseException(Ljava/lang/NumberFormatException;)Lcom/explorestack/protobuf/TextFormat$ParseException;

    move-result-object v0

    throw v0
.end method

.method public final consumeFloat()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .line 1048
    sget-object v0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->FLOAT_INFINITY:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1049
    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1050
    invoke-virtual {p0}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->nextToken()V

    if-eqz v0, :cond_0

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    return v0

    :cond_0
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    return v0

    .line 1053
    :cond_1
    sget-object v0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->FLOAT_NAN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1054
    invoke-virtual {p0}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->nextToken()V

    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    .line 1058
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 1059
    invoke-virtual {p0}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->nextToken()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1062
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->floatParseException(Ljava/lang/NumberFormatException;)Lcom/explorestack/protobuf/TextFormat$ParseException;

    move-result-object v0

    throw v0
.end method

.method public final consumeIdentifier()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/TextFormat$ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 890
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 891
    iget-object v1, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x61

    if-gt v2, v1, :cond_0

    const/16 v2, 0x7a

    if-le v1, v2, :cond_4

    :cond_0
    const/16 v2, 0x41

    if-gt v2, v1, :cond_1

    const/16 v2, 0x5a

    if-le v1, v2, :cond_4

    :cond_1
    const/16 v2, 0x30

    if-gt v2, v1, :cond_2

    const/16 v2, 0x39

    if-le v1, v2, :cond_4

    :cond_2
    const/16 v2, 0x5f

    if-eq v1, v2, :cond_4

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_3

    goto :goto_1

    .line 899
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected identifier. Found \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/explorestack/protobuf/TextFormat$ParseException;

    move-result-object v0

    throw v0

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 903
    :cond_5
    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    .line 904
    invoke-virtual {p0}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->nextToken()V

    return-object v0
.end method

.method public final consumeInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .line 927
    :try_start_0
    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/explorestack/protobuf/TextFormat;->parseInt32(Ljava/lang/String;)I

    move-result v0

    .line 928
    invoke-virtual {p0}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->nextToken()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 931
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->integerParseException(Ljava/lang/NumberFormatException;)Lcom/explorestack/protobuf/TextFormat$ParseException;

    move-result-object v0

    throw v0
.end method

.method public final consumeInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .line 955
    :try_start_0
    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/explorestack/protobuf/TextFormat;->parseInt64(Ljava/lang/String;)J

    move-result-wide v0

    .line 956
    invoke-virtual {p0}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->nextToken()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 959
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->integerParseException(Ljava/lang/NumberFormatException;)Lcom/explorestack/protobuf/TextFormat$ParseException;

    move-result-object v0

    throw v0
.end method

.method public final consumeString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .line 1106
    invoke-virtual {p0}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->consumeByteString()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final consumeUInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .line 941
    :try_start_0
    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/explorestack/protobuf/TextFormat;->parseUInt32(Ljava/lang/String;)I

    move-result v0

    .line 942
    invoke-virtual {p0}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->nextToken()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 945
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->integerParseException(Ljava/lang/NumberFormatException;)Lcom/explorestack/protobuf/TextFormat$ParseException;

    move-result-object v0

    throw v0
.end method

.method public final consumeUInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .line 982
    :try_start_0
    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/explorestack/protobuf/TextFormat;->parseUInt64(Ljava/lang/String;)J

    move-result-wide v0

    .line 983
    invoke-virtual {p0}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->nextToken()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 986
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->integerParseException(Ljava/lang/NumberFormatException;)Lcom/explorestack/protobuf/TextFormat$ParseException;

    move-result-object v0

    throw v0
.end method

.method final getColumn()I
    .locals 1

    .line 796
    iget v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->column:I

    return v0
.end method

.method final getLine()I
    .locals 1

    .line 792
    iget v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->line:I

    return v0
.end method

.method final getPreviousColumn()I
    .locals 1

    .line 788
    iget v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->previousColumn:I

    return v0
.end method

.method final getPreviousLine()I
    .locals 1

    .line 784
    iget v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->previousLine:I

    return v0
.end method

.method public final lookingAt(Ljava/lang/String;)Z
    .locals 1

    .line 882
    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final lookingAtInteger()Z
    .locals 3

    .line 872
    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    if-gt v2, v0, :cond_1

    const/16 v2, 0x39

    if-le v0, v2, :cond_3

    :cond_1
    const/16 v2, 0x2d

    if-eq v0, v2, :cond_3

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final nextToken()V
    .locals 3

    .line 806
    iget v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->line:I

    iput v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->previousLine:I

    .line 807
    iget v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->column:I

    iput v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->previousColumn:I

    .line 810
    :goto_0
    iget v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->pos:I

    iget-object v1, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 811
    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->text:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 812
    iget v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->line:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->line:I

    const/4 v0, 0x0

    .line 813
    iput v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->column:I

    goto :goto_1

    .line 815
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->column:I

    .line 817
    :goto_1
    iget v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->pos:I

    goto :goto_0

    .line 821
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v0

    iget-object v1, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v1

    if-ne v0, v1, :cond_2

    const-string v0, ""

    .line 823
    iput-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    return-void

    .line 825
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    sget-object v1, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->TOKEN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 826
    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 827
    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    .line 828
    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iget-object v2, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    goto :goto_2

    .line 831
    :cond_3
    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->text:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    .line 832
    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    iget v1, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 835
    :goto_2
    invoke-direct {p0}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->skipWhitespace()V

    return-void
.end method

.method public final parseException(Ljava/lang/String;)Lcom/explorestack/protobuf/TextFormat$ParseException;
    .locals 3

    .line 1163
    new-instance v0, Lcom/explorestack/protobuf/TextFormat$ParseException;

    iget v1, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->line:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->column:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lcom/explorestack/protobuf/TextFormat$ParseException;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public final parseExceptionPreviousToken(Ljava/lang/String;)Lcom/explorestack/protobuf/TextFormat$ParseException;
    .locals 3

    .line 1172
    new-instance v0, Lcom/explorestack/protobuf/TextFormat$ParseException;

    iget v1, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->previousLine:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->previousColumn:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lcom/explorestack/protobuf/TextFormat$ParseException;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public final tryConsume(Ljava/lang/String;)Z
    .locals 1

    .line 852
    iget-object v0, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 853
    invoke-virtual {p0}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->nextToken()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final tryConsumeDouble()Z
    .locals 1

    .line 1034
    :try_start_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->consumeDouble()D
    :try_end_0
    .catch Lcom/explorestack/protobuf/TextFormat$ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public final tryConsumeFloat()Z
    .locals 1

    .line 1072
    :try_start_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->consumeFloat()F
    :try_end_0
    .catch Lcom/explorestack/protobuf/TextFormat$ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public final tryConsumeIdentifier()Z
    .locals 1

    .line 914
    :try_start_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;
    :try_end_0
    .catch Lcom/explorestack/protobuf/TextFormat$ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public final tryConsumeInt64()Z
    .locals 1

    .line 969
    :try_start_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->consumeInt64()J
    :try_end_0
    .catch Lcom/explorestack/protobuf/TextFormat$ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public final tryConsumeString()Z
    .locals 1

    .line 1112
    :try_start_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->consumeString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/explorestack/protobuf/TextFormat$ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public final tryConsumeUInt64()Z
    .locals 1

    .line 996
    :try_start_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->consumeUInt64()J
    :try_end_0
    .catch Lcom/explorestack/protobuf/TextFormat$ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public final unknownFieldParseExceptionPreviousToken(Ljava/lang/String;Ljava/lang/String;)Lcom/explorestack/protobuf/TextFormat$UnknownFieldParseException;
    .locals 3

    .line 1198
    new-instance v0, Lcom/explorestack/protobuf/TextFormat$UnknownFieldParseException;

    iget v1, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->previousLine:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/explorestack/protobuf/TextFormat$Tokenizer;->previousColumn:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/explorestack/protobuf/TextFormat$UnknownFieldParseException;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
